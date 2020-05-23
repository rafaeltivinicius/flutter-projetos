import 'package:appcaracoroa/CaraCoroa.dart';
import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {
  var valor;
  Resultado({this.valor});
  @override
  _ResultadoState createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {

    var _imagemApp;
    var result = widget.valor;

    switch (result) {
      case "cara":
        setState(() {
          _imagemApp = AssetImage("images/moeda_cara.png");
        });
        break;
      case "coroa":
        setState(() {
          _imagemApp = AssetImage("images/moeda_coroa.png");
        });
        break;
    }

    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(image: _imagemApp),
            GestureDetector(
              onTap: () {
                Navigator.pop(
                    context); //fecha a interface atual (logo voltamos para a pagina inicial)
              },
              child: Image.asset("images/botao_voltar.png"),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
