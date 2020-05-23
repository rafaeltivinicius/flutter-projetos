import 'package:flutter/material.dart';

class TelaServico extends StatefulWidget {
  @override
  _TelaServicoState createState() => _TelaServicoState();
}

class _TelaServicoState extends State<TelaServico> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Serviço"), backgroundColor: Colors.green),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: <Widget>[
                    Image.asset("images/detalhe_servico.png"),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                    ),
                    Text(
                      "Sobre os Serviços",
                      style: TextStyle(color: Colors.deepOrange, fontSize: 25),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10,top: 16),
                child: Text(
                    "Consultoria"),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10,top: 16),
                child: Text(
                    "Preços"),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10,top: 16),
                child: Text(
                    "Acompanhamento de Projetos"),
              ),
            ],
          ),
        ));
  }
}
