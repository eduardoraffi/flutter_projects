import 'package:flutter/material.dart';

class EntradaCheckBox extends StatefulWidget {
  @override
  _EntradaCheckBoxState createState() => _EntradaCheckBoxState();
}

class _EntradaCheckBoxState extends State<EntradaCheckBox> {
  Map<String, bool> _checkBoxConfig;

  @override
  void initState() {
    super.initState();
    _checkBoxConfig = {
      'Nome 1': false,
      'Nome 2': false,
      'Nome 3': false,
      'Nome 4': false,
      'Nome 5': false,
      'Nome 6': false,
      'Nome 7': false,
      'Nome 8': false,
      'Nome 9': false,
      'Nome 10': false
    };
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: _checkBoxConfig.keys
          .map((String key) => CheckboxListTile(
                title: Text(key),
                value: _checkBoxConfig[key],
                activeColor: Colors.blueGrey,
                selected: _checkBoxConfig[key],
                onChanged: (bool value) {
                  setState(() {
                    _checkBoxConfig[key] = value;
                  });
                },
              ))
          .toList(),
    ));
  }
}
