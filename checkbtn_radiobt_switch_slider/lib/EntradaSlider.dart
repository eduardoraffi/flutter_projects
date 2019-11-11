import 'package:flutter/material.dart';

class EntradaSlider extends StatefulWidget {
  @override
  _EntradaSliderState createState() => _EntradaSliderState();
}

class _EntradaSliderState extends State<EntradaSlider> {
  double _sliderValue;
  String _showSliderValue = "Valor no slider: ";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _sliderValue = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        Slider(
            value: _sliderValue,
            min: 0,
            max: 100,
            label: '$_showSliderValue' + '$_sliderValue',
            divisions: 10,
            onChanged: (value) {
              setState(() {
                _sliderValue = value;
              });
            })
      ],
    ));
  }
}
