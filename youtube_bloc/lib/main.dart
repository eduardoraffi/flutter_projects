import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:youtube_bloc/yt_home/bloc_export.dart';
import 'yt_home/home_view.dart';

void main() {
  BlocSupervisor().delegate = SimpleBlocDelegate();
  runApp(MaterialApp(home: HomeView()));
}
