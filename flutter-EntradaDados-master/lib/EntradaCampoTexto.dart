import 'package:flutter/material.dart';

class EntradaCampoTexto extends StatefulWidget {
  @override
  _EntradaCampoTextoState createState() => _EntradaCampoTextoState();
}

class _EntradaCampoTextoState extends State<EntradaCampoTexto> {

  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
              padding: EdgeInsets.all(32),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: "Digite um valor"),
                maxLength: 2,
                style: TextStyle(
                    color: Colors.green
                ),
                onSubmitted: (String campo){
                  print(campo);
                },
                controller: _textEditingController,
              )),
          RaisedButton(
            child: Text("Salvar"),
            color: Colors.green,
            onPressed:() {
        print("o valor é "+_textEditingController.text);
            },
          )
        ],
      ),
    );
  }
}
