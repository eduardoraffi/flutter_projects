import 'package:flutter/material.dart';

import 'ViewEmpresa.dart';
import 'ViewServico.dart';
import 'ViewClientes.dart';
import 'ViewContato.dart';

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("images/logo.png"),
            Padding(
                padding: EdgeInsets.only(top: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    GestureDetector(
                        onTap: () => {_tapEmpresa(context)},
                        child: Image.asset("images/menu_empresa.png")),
                    GestureDetector(
                      onTap: () => {_tapServico(context)},
                      child: Image.asset("images/menu_servico.png"),
                    ),
                  ],
                )),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: () => {_tapCliente(context)},
                    child: Image.asset("images/menu_cliente.png"),
                  ),
                  GestureDetector(
                    onTap: () => {_tapContato(context)},
                    child: Image.asset("images/menu_contato.png"),
                  ),
                ],
              ),
            )
          ],
        ));
  }

  _tapEmpresa(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ViewEmpresa(teste: _populateWithA(),)));
  }

  _tapServico(BuildContext context) {
    Scaffold.of(context).hideCurrentSnackBar();
    Scaffold.of(context)
        .showSnackBar(SnackBar(content: Text("Ainda não implementado")));
//    Navigator.push(context, MaterialPageRoute(builder: (context) => ViewServico()));
  }

  _tapContato(BuildContext context) {
    Scaffold.of(context).hideCurrentSnackBar();
    Scaffold.of(context)
        .showSnackBar(SnackBar(content: Text("Ainda não implementado")));
//    Navigator.push(context, MaterialPageRoute(builder: (context) => ViewContato()));
  }

  _tapCliente(BuildContext context) {
    Scaffold.of(context).hideCurrentSnackBar();
    Scaffold.of(context)
        .showSnackBar(SnackBar(content: Text("Ainda não implementado")));
//    Navigator.push(context, MaterialPageRoute(builder: (context) => ViewClientes()));
  }

  String _populateWithA() {
    String a = "a";
    for (int i = 0; i < 5000; i++) {
      a += "a";
    }
    return a;
  }
}
