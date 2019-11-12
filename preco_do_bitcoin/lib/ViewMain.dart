import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class ViewMain extends StatefulWidget {
  @override
  _ViewMainState createState() => _ViewMainState();
}

class _ViewMainState extends State<ViewMain> {
  String _bitcoinPrice = "Pressione para atualizar";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(""),
            Text(_bitcoinPrice,
            style: TextStyle(
              fontSize: 24
            ),),
            RaisedButton(
              child: Text("Atualizar",style: TextStyle(
                color: Colors.white
              ),),
              color: Colors.deepOrangeAccent,
              onPressed: () {
                setState(() {
                  _requestBitcoinPrice();
                });
              },
            )
          ],
        ),
      ),
    );
  }

  Future<String> _requestBitcoinPrice() async {
    String url = "https://blockchain.info/ticker";
    http.Response response = await http.get(url);

    Map<String,dynamic> retorno = json.decode(response.body);
    
    _bitcoinPrice = retorno['BRL']['symbol'].toString() + retorno['BRL']['buy'].toString();
  }
}
