import 'dart:async';
import 'package:bloc/bloc.dart';
import './bloc_export.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  @override
  HomeState get initialState => InitialHomeState();

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    if(event is SearchEvent)
      {
        print(event.toString());
        yield SearchState();
      }
    if(event is InitialHomeEvent)
      {
        yield InitialHomeState();
      }
  }
}
