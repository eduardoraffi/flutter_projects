import 'package:flutter/material.dart';

class EntradaSwitch extends StatefulWidget {
  @override
  _EntradaSwitchState createState() => _EntradaSwitchState();
}

class _EntradaSwitchState extends State<EntradaSwitch> {
  Map<int, bool> _switchState;
  List<String> _switchTitle;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _switchState = {1: false, 2: false, 3: false};
    _switchTitle = ['Switch 1', 'Switch 2', 'Switch 3'];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: _switchState.keys
          .map((int key) => SwitchListTile(
              value: _switchState[key],
              onChanged: (userChoice) {
                setState(() {
                  _switchState[key] = userChoice;
                });
              },
              title: Text(_switchTitle[key - 1].toString())))
          .toList(),
    ));
  }
}
