import 'package:flutter/material.dart';

class EntradaCheckBox extends StatefulWidget {
  @override
  _EntradaCheckBoxState createState() => _EntradaCheckBoxState();
}

class _EntradaCheckBoxState extends State<EntradaCheckBox> {
  var checkBrasileiro = false;
  var checkJaponesa = false;
  var escolhas = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Modelo CheckBox"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            CheckboxListTile(
                title: Text("Comida Brasileira"),
                subtitle: Text("A melhor comida"),
                activeColor: Colors.green,
                selected: checkBrasileiro,
                secondary: Icon(Icons.add_box),
                value: checkBrasileiro,
                onChanged: (bool valor) {
                  setState(() {
                    checkBrasileiro = valor;
                  });
                }),
            CheckboxListTile(
                title: Text("Comida Japonesa"),
                subtitle: Text("A melhor comida"),
                activeColor: Colors.green,
                selected: checkJaponesa,
                secondary: Icon(Icons.add_box),
                value: checkJaponesa,
                onChanged: (bool valor) {
                  setState(() {
                    checkJaponesa = valor;
                  });
                }),
            RaisedButton(
                child: Text(
                  "Salvar",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  setState(() {
                    escolhas = "";
                    if (checkBrasileiro) escolhas = " Comidar Brasileira ";
                    if (checkJaponesa) escolhas += " Comidar Japonesa ";
                    if(escolhas == "")
                      escolhas = "Nenhuma comida escolhida";
                  });
                }),
            Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  escolhas,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                )),
//            Checkbox(
//              value: valorCheckbox,
//              onChanged: (bool valor) {
//                setState(() {
//                    valorCheckbox = valor;
//                });
//              },
//            )
          ],
        ),
      ),
    );
  }
}
