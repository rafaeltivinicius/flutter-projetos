import 'package:flutter/material.dart';

class AlcoolGasolina extends StatefulWidget {
  @override
  _AlcoolGasolinaState createState() => _AlcoolGasolinaState();
}

class _AlcoolGasolinaState extends State<AlcoolGasolina> {
  var _controllerAlcoo = TextEditingController();
  var _controllerGasolina = TextEditingController();
  var _resultado = "";

  void _calcular() {
    var precoAlcool = double.tryParse(_controllerAlcoo.text);
    var precoGasolina = double.tryParse(_controllerGasolina.text);
    setState(() {
      if ((precoAlcool / precoGasolina) >= 0.7)
        _resultado = "Abasteça com Gasolia";
      else
        _resultado = "Abasteça com Alcool";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("App Alcool ou Gasolina"),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          child: SingleChildScrollView(
            //defini o scrool da pagina
            padding: EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              //faz com que ocupe toda área
              children: <Widget>[
                Image.asset("images/logo.png"),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    "Saiba qual a melhor opção para abastecimento do seu carro",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                TextField(
                  decoration:
                      InputDecoration(labelText: "Preço Alcool, ex 2.50"),
                  style: TextStyle(fontSize: 22),
                  keyboardType: TextInputType.number,
                  controller: _controllerAlcoo,
                ),
                TextField(
                  decoration:
                      InputDecoration(labelText: "Preço Gasolina, ex 4.20"),
                  keyboardType: TextInputType.number,
                  controller: _controllerGasolina,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                ),
                RaisedButton(
                  child: Text(
                    "Calcular",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  color: Colors.blue,
                  padding: EdgeInsets.all(10),
                  onPressed: _calcular,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    _resultado,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
