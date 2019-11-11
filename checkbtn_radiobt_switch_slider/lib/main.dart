import 'package:flutter/material.dart';
import 'package:checkbtn_radiobt_switch_slider/EntradaCheckbBox.dart';

import 'EntradaRadioButton.dart';
import 'EntradaSlider.dart';
import 'EntradaSwitch.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("teste de checkbox"),
          elevation: 5,
        ),
        body: Container(
            child: ListView(children: <Widget>[
          EntradaCheckBox(),
          EntradaRadioButton(),
          EntradaSwitch(),
          EntradaSlider()
        ])));
  }
}
