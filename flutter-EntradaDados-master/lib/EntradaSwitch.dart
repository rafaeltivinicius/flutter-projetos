import 'package:flutter/material.dart';

class EntradaSwitch extends StatefulWidget {
  @override
  _EntradaSwitchState createState() => _EntradaSwitchState();
}

class _EntradaSwitchState extends State<EntradaSwitch> {
  var escolhaUsuario = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Modelo CheckBox"),
      ),
      body: Container(
        child: Row(
          children: <Widget>[
            Switch(
                value: escolhaUsuario,
                onChanged: (bool valor) {
                  setState(() {
                    escolhaUsuario = valor;
                  });
                }),
            Text("Receber notificaçoes")
          ],
        ),
      ),
    );
  }
}
