import 'dart:convert';
import 'package:flutter/material.dart';
import 'models/Item.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
//criada fora do build para não perde o stado
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Conceitos",
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  var items = new List<Item>();

  HomePage() {
    items = [];
    /*items.add(Item(title: "Item 1", done: false));
    items.add(Item(title: "Item 2", done: true));
    items.add(Item(title: "Item 3", done: false));*/
  }

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  _HomePageState() {
    Load();
  }

  var newTaskCtrl = new TextEditingController();

  void Add() {
    if (newTaskCtrl.text.isEmpty) return;
    setState(() {
      widget.items.add(Item(title: newTaskCtrl.text, done: false));
    });
    newTaskCtrl.clear();
    Save(); //alteração de stado Salvar
  }

  void Remove(int index) {
    setState(() {
      widget.items.removeAt(index);
      Save(); //alteração de stado Deletar
    });
  }

  Future Load() async {
    var prefs = await SharedPreferences.getInstance();
    var data = prefs.getString('data');

    if (data != null) {
      Iterable decoded = jsonDecode(data);
      List<Item> result = decoded.map((x) => Item.fromJson(x)).toList();

      setState(() {
        widget.items = result;
      });
    }
  }

  Save() async {
    var pref = await SharedPreferences.getInstance();
    await pref.setString('data', jsonEncode(widget.items));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text("Oi"),
        title: TextFormField(
          controller: newTaskCtrl,
          keyboardType: TextInputType.text,
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
          decoration: InputDecoration(
            labelText: "Nova Tarefa",
            labelStyle: TextStyle(color: Colors.white, fontSize: 20),
          ),
          validator: (value) {
            if (value.isEmpty) {
              return "*";
            }
          },
        ),
        actions: <Widget>[Icon(Icons.plus_one)],
      ),
      body: ListView.builder(
        itemCount: widget.items.length,
        itemBuilder: (BuildContext bc, int index) {
          final item = widget.items[index];
          return Dismissible(
            child: CheckboxListTile(
              title: Text(item.title ?? ""),
              value: item.done,
              onChanged: (bool value) {
                setState(() {
                  item.done = value;
                  Save(); //alteração de stado Alterarar
                });
              },
            ),
            key: Key(index.toString()),
            background: Container(
              color: Colors.red.withOpacity(0.2),
            ),
            onDismissed: (direction) {
              Remove(index);
            },
          );
          /*CheckboxListTile(
            title: Text(item.title),
            key: Key(index.toString()),
            value: item.done,
            onChanged: (value) {
              setState(() {
                item.done = value;
              });
            },
          );*/
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: Add,
        child: Icon(Icons.add),
        backgroundColor: Colors.pink,
      ),
      /*body: Container(
          child: Center(
          child: Text("Olá Mundo"),
          )*/
    );
  }
}
