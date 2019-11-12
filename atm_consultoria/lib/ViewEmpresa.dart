import 'package:flutter/material.dart';

class ViewEmpresa extends StatefulWidget {
  String _recoveredString;

  ViewEmpresa({String teste})
  {
    _recoveredString = teste;
  }

  @override
  _ViewEmpresaState createState() => _ViewEmpresaState();
}

class _ViewEmpresaState extends State<ViewEmpresa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Empresa"),
          centerTitle: true,
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: Container(
          padding: EdgeInsets.only(left: 16, top: 32, right: 16),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(left: 16, right: 16),
                      child: Image.asset("images/detalhe_empresa.png")),
                  Text(
                    "Sobre a empresa",
                    style: TextStyle(
                        decoration: null,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.deepOrangeAccent),
                  ),
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                    child: Padding(
                  padding: EdgeInsets.only(top: 24),
                  child: Column(children: <Widget>[
                    Text(
                      widget._recoveredString,
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    )
                  ]),
                )),
              )
            ],
          ),
        ));
  }
}
