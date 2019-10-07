import 'package:flutter/material.dart';
import 'dart:math';

class Jogo extends StatefulWidget {
  @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  String _appChoice = "Clique em pedra, papel ou tesoura:";
  String _imagePath;
  int _imageAppChoice = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("JokenPo"),
          centerTitle: true
      ),
      body: Column(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(top: 32, bottom: 32),
              child: Text(
                  "Escolha do app:",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
              )
          ),

          Image.asset(_getImageName(_imageAppChoice)),
          Padding(
              padding: EdgeInsets.only(top: 32, bottom: 32),
              child: Text(
                  _appChoice,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
              )
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>
            [
              GestureDetector(
                  onTap: () => setState(()
                  {
                      executeAction(2);
                  }),
                  child: Image.asset(_getImageName(2), height: 100)
              ),
              GestureDetector(
                  onTap: () => setState(()
                  {
                      executeAction(3);
                  }),
                  child: Image.asset(_getImageName(3), height: 100)
              ),
              GestureDetector(
                  onTap: () => setState(()
                  {
                      executeAction(4);
                  }),
                  child: Image.asset(_getImageName(4), height: 100)
              ),


            ],
          )
        ],
      ),
    );
  }

  String _getImageName(int imgNmbr) {
    String imageName = "";

    switch (imgNmbr)
    {
      case 0:
      case 1:
        imageName = "padrao";
        break;
      case 2:
        imageName = "pedra";
        break;
      case 3:
        imageName = "papel";
        break;
      case 4:
        imageName = "tesoura";
        break;
      default:
        break;
    }

    _imagePath = "images/$imageName.png";

    return _imagePath;
  }

  void executeAction(int imageNumber)
  {
    int randomizeImage = 0;

    while(randomizeImage == 0 || randomizeImage == 1)
      {
        randomizeImage = Random().nextInt(5);
      }

    _imageAppChoice = randomizeImage;

    if(_imageAppChoice == 2 && imageNumber == 2 ||
       _imageAppChoice == 3 && imageNumber == 3 ||
       _imageAppChoice == 4 && imageNumber == 4)
    {
      _appChoice = "Empatou.\nJogue de novo!";
    }
    else if(_imageAppChoice == 3 && imageNumber == 2 ||
            _imageAppChoice == 4 && imageNumber == 3 ||
            _imageAppChoice == 2 && imageNumber == 4)
    {
      _appChoice = "Você perdeu!\nJogue de novo!";
    }
    else
      _appChoice = "Você ganhou, parabéns!\nClique em pedra, papel ou tesoura para jogar novamente:";
  }

}
