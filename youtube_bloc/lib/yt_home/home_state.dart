import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

@immutable
abstract class HomeState extends Equatable {
  HomeState([List props = const <dynamic>[]]) : super(props);
}

class InitialHomeState extends HomeState {
  @override
  String toString() => "InitialHomeState";
}

class SearchState extends HomeState {
  @override
  String toString() => "SearchState";
}

class BottomNavigationTappedState extends HomeState {
  @override
  String toString() => "BottomNavigationTappedState";
}
