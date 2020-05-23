import 'package:flutter/material.dart';

class EntradaRadioButton extends StatefulWidget {
  @override
  _EntradaRadioButtonState createState() => _EntradaRadioButtonState();
}

class _EntradaRadioButtonState extends State<EntradaRadioButton> {

  var grupoValueDefault = "";
  var paisEscolhido = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Modelo CheckBox"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            RadioListTile(
                title: Text("Brasileiro"),
                value: "Brasil",
                groupValue: grupoValueDefault,
                onChanged: (escolha) {
                  setState(() {
                    grupoValueDefault = escolha;
                  });
                }),
            RadioListTile(
                title: Text("Americano"),
                value: "EUA",
                groupValue: grupoValueDefault,
                onChanged: (escolha) {
                  setState(() {
                    grupoValueDefault = escolha;
                  });
                }),
            RadioListTile(
                title: Text("Japones"),
                value: "Japao",
                groupValue: grupoValueDefault,
                onChanged: (escolha) {
                  setState(() {
                    grupoValueDefault = escolha;
                  });
                }),
            RaisedButton(
                child: Text("Mostra Escolha"),
                onPressed: () {
                  setState(() {
                    paisEscolhido = grupoValueDefault;
                  });
                }),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(paisEscolhido),
            )
          ],
        ),
      ),
    );
  }
}
