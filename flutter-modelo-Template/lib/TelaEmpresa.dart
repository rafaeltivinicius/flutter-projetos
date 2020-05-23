import 'package:flutter/material.dart';

class TelaEmpresa extends StatefulWidget {
  @override
  _TelaEmpresaState createState() => _TelaEmpresaState();
}

class _TelaEmpresaState extends State<TelaEmpresa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Empresa"), backgroundColor: Colors.green),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: <Widget>[
                    Image.asset("images/detalhe_empresa.png"),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                    ),
                    Text(
                      "Sobre a Empresa",
                      style: TextStyle(color: Colors.deepOrange, fontSize: 25),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20, left: 20, bottom: 20),
                child: Text(
                    "asd asdiuhasd asdiuhas dasd iuashdasd iauh sdasd iuasd asdo uiash d asdioah sd asdiuah sd asdiuh asd asdiuha sdiuashdasd aisdug asdyuig asd iasudg asd"
                        "asd asdiuhasd asdiuhas dasd iuashdasd iauh sdasd iuasd asdo uiash d asdioah sd asdiuah sd asdiuh asd asdiuha sdiuashdasd aisdug asdyuig asd iasudg asd"
                        "asd asdiuhasd asdiuhas dasd iuashdasd iauh sdasd iuasd asdo uiash d asdioah sd asdiuah sd asdiuh asd asdiuha sdiuashdasd aisdug asdyuig asd iasudg asd"
                        "asd asdiuhasd asdiuhas dasd iuashdasd iauh sdasd iuasd asdo uiash d asdioah sd asdiuah sd asdiuh asd asdiuha sdiuashdasd aisdug asdyuig asd iasudg asd"
                        "asd asdiuhasd asdiuhas dasd iuashdasd iauh sdasd iuasd asdo uiash d asdioah sd asdiuah sd asdiuh asd asdiuha sdiuashdasd aisdug asdyuig asd iasudg asd"
                        "asd asdiuhasd asdiuhas dasd iuashdasd iauh sdasd iuasd asdo uiash d asdioah sd asdiuah sd asdiuh asd asdiuha sdiuashdasd aisdug asdyuig asd iasudg asd"
                        "asd asdiuhasd asdiuhas dasd iuashdasd iauh sdasd iuasd asdo uiash d asdioah sd asdiuah sd asdiuh asd asdiuha sdiuashdasd aisdug asdyuig asd iasudg asd"
                        "asd asdiuhasd asdiuhas dasd iuashdasd iauh sdasd iuasd asdo uiash d asdioah sd asdiuah sd asdiuh asd asdiuha sdiuashdasd aisdug asdyuig asd iasudg asd"
                        "asd asdiuhasd asdiuhas dasd iuashdasd iauh sdasd iuasd asdo uiash d asdioah sd asdiuah sd asdiuh asd asdiuha sdiuashdasd aisdug asdyuig asd iasudg asd"
                        "asd asdiuhasd asdiuhas dasd iuashdasd iauh sdasd iuasd asdo uiash d asdioah sd asdiuah sd asdiuh asd asdiuha sdiuashdasd aisdug asdyuig asd iasudg asd"
                        "asd asdiuhasd asdiuhas dasd iuashdasd iauh sdasd iuasd asdo uiash d asdioah sd asdiuah sd asdiuh asd asdiuha sdiuashdasd aisdug asdyuig asd iasudg asd"
                        "asd asdiuhasd asdiuhas dasd iuashdasd iauh sdasd iuasd asdo uiash d asdioah sd asdiuah sd asdiuh asd asdiuha sdiuashdasd aisdug asdyuig asd iasudg asd"
                        "asd asdiuhasd asdiuhas dasd iuashdasd iauh sdasd iuasd asdo uiash d asdioah sd asdiuah sd asdiuh asd asdiuha sdiuashdasd aisdug asdyuig asd iasudg asd"
                        "asd asdiuhasd asdiuhas dasd iuashdasd iauh sdasd iuasd asdo uiash d asdioah sd asdiuah sd asdiuh asd asdiuha sdiuashdasd aisdug asdyuig asd iasudg asd"
                        "asd asdiuhasd asdiuhas dasd iuashdasd iauh sdasd iuasd asdo uiash d asdioah sd asdiuah sd asdiuh asd asdiuha sdiuashdasd aisdug asdyuig asd iasudg asd"
                        "asd asdiuhasd asdiuhas dasd iuashdasd iauh sdasd iuasd asdo uiash d asdioah sd asdiuah sd asdiuh asd asdiuha sdiuashdasd aisdug asdyuig asd iasudg asd"
                        "asd asdiuhasd asdiuhas dasd iuashdasd iauh sdasd iuasd asdo uiash d asdioah sd asdiuah sd asdiuh asd asdiuha sdiuashdasd aisdug asdyuig asd iasudg asd"
                        "asd asdiuhasd asdiuhas dasd iuashdasd iauh sdasd iuasd asdo uiash d asdioah sd asdiuah sd asdiuh asd asdiuha sdiuashdasd aisdug asdyuig asd iasudg asd"
                        "asd asdiuhasd asdiuhas dasd iuashdasd iauh sdasd iuasd asdo uiash d asdioah sd asdiuah sd asdiuh asd asdiuha sdiuashdasd aisdug asdyuig asd iasudg asd"
                        "asd asdiuhasd asdiuhas dasd iuashdasd iauh sdasd iuasd asdo uiash d asdioah sd asdiuah sd asdiuh asd asdiuha sdiuashdasd aisdug asdyuig asd iasudg asd"),
              ),
            ],
          ),
        ));
  }
}
