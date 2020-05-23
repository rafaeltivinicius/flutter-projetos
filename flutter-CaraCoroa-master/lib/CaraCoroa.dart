import 'package:appcaracoroa/Resultado.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class CaraCoroa extends StatefulWidget {
  @override
  _CaraCoroaState createState() => _CaraCoroaState();
}

class _CaraCoroaState extends State<CaraCoroa> {

  void ExibirResultado() {

    var opcoes = ["cara", "coroa"];
    var opcaoMaquina = opcoes[Random().nextInt(opcoes.length)];

    print("opacao maquina "+opcaoMaquina);

    Navigator.push(  //você passa a tela que quer ir
        context,
        MaterialPageRoute(
            builder: (context) => Resultado(valor: opcaoMaquina)
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("images/logo.png"),
            GestureDetector(
                onTap: ExibirResultado,
                child: Image.asset("images/botao_jogar.png"),
            ),
          ],
        ),
      ),
    );
  }
}
