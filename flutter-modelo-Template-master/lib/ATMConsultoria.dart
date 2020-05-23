import 'package:atmconsultoriaapp/TelaCliente.dart';
import 'package:atmconsultoriaapp/TelaContato.dart';
import 'package:atmconsultoriaapp/TelaServico.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'TelaEmpresa.dart';

class ATMConsultoria extends StatefulWidget {
  @override
  _ATMConsultoriaState createState() => _ATMConsultoriaState();
}

class _ATMConsultoriaState extends State<ATMConsultoria> {

  void EscolhaOpcao(String escolha) {

    switch (escolha) {
      case "empresa":
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => TelaEmpresa()));
        break;
      case "servico":
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => TelaServico()));
        break;
      case "cliente":
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => TelaCliente()));
        break;
      case "contato":
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => TelaContato()));
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ATM Consultoria"),
        backgroundColor: Colors.green,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 70),
          ),
          Image.asset("images/logo.png"),
          Padding(
            padding: EdgeInsets.only(top: 30),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  EscolhaOpcao("empresa");
                },
                child: Image.asset("images/menu_empresa.png"),
              ),
              Padding(
                padding: EdgeInsets.only(right: 30),
              ),
              GestureDetector(
                onTap: () {
                  EscolhaOpcao("servico");
                },
                child: Image.asset("images/menu_servico.png"),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 30),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  EscolhaOpcao("cliente");
                },
                child: Image.asset("images/menu_cliente.png"),
              ),
              Padding(
                padding: EdgeInsets.only(right: 30),
              ),
              GestureDetector(
                onTap: () {
                  EscolhaOpcao("contato");
                },
                child: Image.asset("images/menu_contato.png"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
