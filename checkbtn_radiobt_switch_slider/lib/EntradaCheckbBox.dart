import 'package:flutter/material.dart';

class EntradaCheckBox extends StatefulWidget {
  @override
  _EntradaCheckBoxState createState() => _EntradaCheckBoxState();
}

class _EntradaCheckBoxState extends State<EntradaCheckBox> {
  List<CheckboxListTile> _cbList;

  Map<String, bool> values;

  @override
  void initState() {
    super.initState();
    values = {'Nome 1': false, 'Nome 2': false, 'Nome 3': false};
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("teste de checkbox"),
        elevation: 5,
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Column(
              children: values.keys.map(
                (String key) {
                  return CheckboxListTile(
                    title: Text(key),
                    value: values[key],
                    activeColor: Colors.blueGrey,
                    selected: values[key],
                    onChanged: (bool value) {
                      setState(() {
                        values[key] = value;
                      });
                    },
                  );
                },
              ).toList(),
            ),
//            Column(
//              children: values.keys.map(
//                (String key) {
//                  return Radio(
//                    title: Text(key),
//                    value: values[key],
//                    onChanged: (bool value) {
//                      setState(() {
//                        values[key] = value;
//                      });
//                    },
//                  );
//                },
//              ).toList(),
//            ),
          ],
        ),
      ),
//      body: Container(
//        child: Column(
//          children: _cbList
//
//          /*<Widget>[
////            Checkbox(
////                value: _isCheckSelected,
////                onChanged: (bool valor){
////                  setState(() {
////                    _isCheckSelected = valor;
////                  });
////                }
////            )
//          ]*/
//          ,
//        ),
//      ),
    );
  }
}
