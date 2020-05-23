import 'package:flutter/material.dart';
import 'package:navegacaotelas/TelaSecundaria.dart';
import 'TelaPrimaria.dart';

void main(){
  runApp(MaterialApp(
    initialRoute: "/",
    routes: {
      "/Primeira":(Context)=> TelaPrincipal(),
      "/Secundaria":(Context)=> TelaSecundaria()
    },
    home: TelaPrincipal(),
  ));
}
