import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

@immutable
abstract class HomeEvent extends Equatable {
  HomeEvent([List props = const <dynamic>[]]) : super(props);
}

class InitialHomeEvent extends HomeEvent {
  @override
  String toString() => "InitialHomeEvent";
}

class SearchEvent extends HomeEvent {
  final BuildContext context;

  SearchEvent({@required this.context}) : super([context]);

  @override
  String toString() => "SearchEvent";
}

class BottomNavigationTappedEvent extends HomeEvent {
  final int currentIndex;

  BottomNavigationTappedEvent({@required this.currentIndex}) : super([currentIndex]);

  @override
  String toString() => "BottomNavigationTappedEvent";
}
