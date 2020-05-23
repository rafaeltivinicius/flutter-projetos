import 'package:flutter/material.dart';

class TelaContato extends StatefulWidget {
  @override
  _TelaContatoState createState() => _TelaContatoState();
}

class _TelaContatoState extends State<TelaContato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Contato"), backgroundColor: Colors.green),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: <Widget>[
                    Image.asset("images/detalhe_contato.png"),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                    ),
                    Text(
                      "Sobre o contato",
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
