import 'package:flutter/material.dart';

class EntradaRadioButton extends StatefulWidget {
  @override
  _EntradaRadioButtonState createState() => _EntradaRadioButtonState();
}

class _EntradaRadioButtonState extends State<EntradaRadioButton> {
  int _choice;
  Map<String, int> _radioNames;
  List<String> _names;

  @override
  void initState() {
    super.initState();
    _radioNames = {'Masculino': 0, 'Feminino': 1, 'Outro': 2};
    _names = ['Masculino', 'Feminino', 'Outro'];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          children: _radioNames.keys
              .map((String key) => RadioListTile(
                    title: Text(_names[_radioNames[key]]),
                    groupValue: _choice,
                    value: _radioNames[key],
                    onChanged: (userChoice) {
                      setState(() {
                        _choice = userChoice;
                      });
                    },
                  ))
              .toList()),
    );
  }

//  teste() {
//    return AboutListTile(
//      aboutBoxChildren: <Widget>[
//        Text("Aboutinterno")
//      ],
//      child: Text('batata'),
//      applicationIcon: Icon(Icons.access_alarm),
//      applicationLegalese: 'Nao viu license n',
//      applicationName: "Naback delissia",
//      applicationVersion: "1.2.10",
//      icon: Icon(Icons.map),
//      key: Key("batata"),
//    )
//        /*Dialog(
//
//      child: Container(
//        child: Column(
//          children: <Widget>[
//            Text("tgeste"),
//            RaisedButton(
//              child: Text("AAAAAAAAA"),
//            )
//          ],
//        ),
//      ),
//    )*/;
//  }
}
