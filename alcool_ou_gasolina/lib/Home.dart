import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>
{
  TextEditingController _textEditingControllerGasolina = TextEditingController();
  TextEditingController _textEditingControllerAlcool = TextEditingController();

  String _bestChoice = "";



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child:
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              FocusScope.of(context).requestFocus(new FocusNode());
            },
            child: SingleChildScrollView
              (
              padding: EdgeInsets.all(32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset("images/logo.png"),
                  Padding(
                      padding: EdgeInsets.all(32),
                      child: Text("Digite o valor do alcool e gasolina para saber qual vale mais a pena utilizar",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),
                        textAlign: TextAlign.center,
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: TextField(
                      controller: _textEditingControllerGasolina,
                      decoration: InputDecoration(
                          hintText: "Gasolina"
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16,bottom: 32),
                    child: TextField(
                      controller: _textEditingControllerAlcool,
                      decoration: InputDecoration(
                        hintText: "Alcool",
                      ),
                    ),
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: RaisedButton(
                          padding: EdgeInsets.all(16),

                          child: Text("Clique para calcular".toUpperCase(),
                              style: TextStyle(
                                color: Colors.white,
                              )
                          ),
                          color: Colors.blue,
                          elevation: 5,
                          onPressed: ()  {
                            setState(() {
                              //tratar se for nulo num futuro distanteee...
                              _bestChoice = _calculateBestChoice();
                            });
                          }
                      )
                  ),
                  Padding(
                      padding: EdgeInsets.all(16),
                      child: Text(_bestChoice)
                  )
                ],
              ),
            )
          )

        ),
    );
  }

  String _calculateBestChoice()
  {
    double alcool;
    double gasolina;
    try
    {
      alcool = double.parse(_textEditingControllerAlcool.text.toString());
      gasolina = double.parse(_textEditingControllerGasolina.text.toString());
    }
    catch(FormatException)
    {
      return "Preencha os campos corretamente. Numeros separados por '.'.";
    }

    double precoDiv = alcool/gasolina;

    if(precoDiv <= 0.7)
    {
      return "Va de alcool";
    }

    return "Va de gasolina!";
  }

}
