import 'package:flutter/material.dart';
import 'Home.dart';

void main() => runApp(MaterialApp(
  home: ConfigureAppBar(),
));

class ConfigureAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        centerTitle: true,
        title: Text("Alcool ou Gasolina"),
      ),
      body: Home(),
    );
  }
}
