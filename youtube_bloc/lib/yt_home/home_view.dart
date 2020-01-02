import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youtube_bloc/yt_home/bloc_export.dart';

class SimpleBlocDelegate extends BlocDelegate {
  @override
  void onTransition(Bloc bloc, Transition transition) {
    print(transition.toString());
  }
}

class HomeView extends StatefulWidget {
  HomeView();
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  HomeBloc _homeBloc;
  final GlobalKey<ScaffoldState> _homeScaffoldKey = GlobalKey<ScaffoldState>();

  int _currentIndex = 1;

  @override
  void initState() {
    _homeBloc = HomeBloc(context: context, currentIndex: _currentIndex);
    super.initState();
  }

  @override
  void dispose() {
    _homeBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _homeScaffoldKey,
        appBar: _getAppBar(),
      bottomNavigationBar: _getBottomNavigationBar(),
        backgroundColor: Colors.white,
        body: BlocProvider<HomeBloc>(
          bloc: _homeBloc,
          child: BlocListener(
            bloc: _homeBloc,
            listener: (BuildContext context, HomeState state) {
              print("State is: ${state.toString()}");
              if (state is SearchState) {
                Scaffold.of(context).showSnackBar(SnackBar(content: Text("Teste")));
              }
            },
            child: BlocBuilder(
                bloc: _homeBloc,
                builder: (BuildContext context, HomeState state) {
                  if(state is SearchState)
                    {
                      return _ytHome("Teste Search");
                    }
                  if(state is InitialHomeState)
                    {
                      return _ytHome("teste home");
                    }
                  return null;
                }),
          ),
        ));
  }

  _getAppBar() {
    return AppBar(
      title: Image.asset("images/youtube.png",width: 98,height: 36,),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            _homeBloc.dispatch(SearchEvent(context: context));
          },
        )
      ],
      backgroundColor: Colors.black87,
    );
  }

  _getBottomNavigationBar() {
    return BottomNavigationBar(
      fixedColor: Colors.red,
      items: [
        BottomNavigationBarItem(
            title: Text("inicio"), icon: Icon(Icons.home)),
        BottomNavigationBarItem(
            title: Text("Em alta"), icon: Icon(Icons.whatshot)),
        BottomNavigationBarItem(
            title: Text("Histórico"), icon: Icon(Icons.history)),
      ],
      currentIndex: _homeBloc.currentIndex,
      onTap: (index) {
        _homeBloc.dispatch(
            BottomNavigationTappedEvent(currentIndex: index));
      },
    );
  }

  _ytHome(String text) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(text)
        ],
      ),
    );
  }
}
