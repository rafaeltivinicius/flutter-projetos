import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // diz respeito a dados q ainda vou recuperar (dados futuros)
  Future<Map> RecuperarPreco() async {
    String url = "https://blockchain.info/ticker";
    http.Response response = await http.get(url);
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Map>(
      future: RecuperarPreco(),
      builder: (context, snapshot) {
        String resultado;

        switch (snapshot.connectionState) {
          case ConnectionState.none:
          case ConnectionState.waiting:
            print("conexao waiting");
            resultado = "Carregando ...";
            break;
          case ConnectionState.active:
          case ConnectionState.done:
            print("conexao done");
            if (snapshot.hasError) {
              resultado = "erro ao carregar os dados";
            } else {
              double valor = snapshot.data["BRL"]["buy"];
              resultado = "Preço do bitcoin : ${valor.toString()}";
            }
            break;
        }
        return Center(
          child: Text(resultado),
        );
      },
    );
  }
}
