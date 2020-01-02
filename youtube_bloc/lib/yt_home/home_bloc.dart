import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import './bloc_export.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  int currentIndex;
  final BuildContext context;

  HomeBloc({@required this.context, @required this.currentIndex});

  @override
  HomeState get initialState => InitialHomeState();

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    if(event is SearchEvent)
      {
        print(event.toString());
        SearchState();
      }
    if(event is InitialHomeEvent)
      {
        InitialHomeState();
      }
    if(event is BottomNavigationTappedEvent)
      {
        this.currentIndex = event.currentIndex;
        BottomNavigationTappedState();
      }
  }
}
