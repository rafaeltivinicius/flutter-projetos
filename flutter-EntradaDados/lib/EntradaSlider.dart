import 'package:flutter/material.dart';

class EntradaSlider extends StatefulWidget {
  @override
  _EntradaSliderState createState() => _EntradaSliderState();
}

class _EntradaSliderState extends State<EntradaSlider> {
  var escolhaUsuario = 0.0;
  var escolha = "Esperando valor";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Modelo CheckBox"),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 10, right: 10,top: 50),
        child: Column(
          children: <Widget>[
            Slider(
              value: escolhaUsuario,
              onChanged: (double valor) {
                setState(() {
                  escolhaUsuario = valor;
                });
              },
              min: 0,
              max: 10,
              divisions: 10,
              label: "Valor selecionado - "+escolhaUsuario.toString(),
              activeColor: Colors.green,
              inactiveColor: Colors.blue,
            ),
            RaisedButton(
                child: Text("Mostra Valor"),
                onPressed: () {
                  setState(() {
                    escolha = escolhaUsuario.toString();
                  });
                }),
            Padding(
                padding: EdgeInsets.only(top: 20, bottom: 20),
                child: Text(
                  escolhaUsuario.toString(),
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                )),
            Padding(
                padding: EdgeInsets.only(top: 20, bottom: 20),
                child: Text(
                  escolha,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                )),
          ],
        ),
      ),
    );
  }
}
