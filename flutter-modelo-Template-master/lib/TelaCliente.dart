import 'package:flutter/material.dart';

class TelaCliente extends StatefulWidget {
  @override
  _TelaClienteState createState() => _TelaClienteState();
}

class _TelaClienteState extends State<TelaCliente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Cliente"), backgroundColor: Colors.green),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Image.asset("images/detalhe_cliente.png"),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                    ),
                    Text(
                      "Sobre Cliente",
                      style: TextStyle(color: Colors.deepOrange, fontSize: 25),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                ),
                Image.asset("images/cliente1.png"),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                ),
                Text(
                  "Empresa de Software",
                  style: TextStyle(fontSize: 15),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                ),
                Image.asset("images/cliente2.png"),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                ),
                Text(
                  "Empresa de Auditoria",
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
        ));
  }
}
