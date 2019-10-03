import 'dart:math';

import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: StartClass(),
  ));
}

class StartClass extends StatefulWidget {
  @override
  _StartClassState createState() => _StartClassState();
}

class _StartClassState extends State<StartClass> {
  List _frases = ["Frase 1","Frase 2","Frase 3","Frase 4","Frase 5",];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 5,
        title: Text("Frases do dia"),
        backgroundColor: Colors.green
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          width: double.infinity,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/img1.jpg"),
              Text(_randomPhrase(this._frases)),
              RaisedButton(
                color: Colors.green,
                textColor: Colors.white,
                child: Text("Nova Frase",
                  style: TextStyle
                    (
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),

                onPressed: (){
                  setState(() {
                    _randomPhrase(this._frases);
                  });
                },
              )
            ],

          ),
        )
      )
    );
  }

  String _randomPhrase(List frases)
  {
    return frases[Random().nextInt(5)];
  }
}

