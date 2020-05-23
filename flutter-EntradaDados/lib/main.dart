
import 'package:entradadados/EntradaCampoTexto.dart';
import 'package:entradadados/EntradaRadioButton.dart';
import 'package:entradadados/EntradaSwitch.dart';
import 'package:entradadados/EntradaSlider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'EntradaCheckBox.dart';

void main(){
  runApp(MaterialApp(
    title: "appEntradaDados",
    home: EntradaSlider(),
    //home: EntradaSwitch(),
    //home: EntradaRadioButton(),
    //home: EntradaCheckBox(),
    //home: CampoTexto(),
  ));
}