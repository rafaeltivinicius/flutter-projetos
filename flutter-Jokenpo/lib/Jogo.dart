import 'dart:math';

import 'package:flutter/material.dart';

class Jogo extends StatefulWidget {
  @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  var _imagemApp = AssetImage("images/padrao.png");
  var _informaResultado = "Escolha uma opção abaixo";

  void OpcaoSelecionada(String escolhaUsuario) {
    var opcaoMaquina = OpcaoMaquina();
    var resultado = Vencedor(escolhaUsuario, opcaoMaquina);
    setState(() {
      _informaResultado = resultado;
    });
  }

  String OpcaoMaquina() {
    var opcoes = ["papel", "pedra", "tesoura"];
    var opcaoMaquina = opcoes[Random().nextInt(opcoes.length)];

    switch (opcaoMaquina) {
      case "pedra":
        setState(() {
          _imagemApp = AssetImage("images/pedra.png");
        });
        break;
      case "papel":
        setState(() {
          _imagemApp = AssetImage("images/papel.png");
        });
        break;
      case "tesoura":
        setState(() {
          _imagemApp = AssetImage("images/tesoura.png");
        });
        break;
    }
    return opcaoMaquina;
  }

  String Vencedor(String jogador, String maquina) {
    if (jogador == maquina)
      return "Empate";
    else if ((jogador == "tesoura" && maquina == "papel") ||
            (jogador == "papel" && maquina == "pedra") ||
            (jogador == "pedra" && maquina == "tesoura"))
      return "Você ganhou";
    else
      return "Você perdeu";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("JokenPo"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              "Escolha do App",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Image(image: _imagemApp),
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              _informaResultado,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              GestureDetector(
                onTap: () => OpcaoSelecionada("pedra"),
                child: Image.asset("images/pedra.png", width: 100),
              ),
              GestureDetector(
                onTap: () => OpcaoSelecionada("papel"),
                child: Image.asset("images/papel.png", width: 100),
              ),
              GestureDetector(
                onTap: () => OpcaoSelecionada("tesoura"),
                child: Image.asset("images/tesoura.png", width: 100),
              ),
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(),
    );
  }
}
