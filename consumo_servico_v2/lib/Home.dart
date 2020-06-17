import 'package:flutter/material.dart';
import 'package:consumo_servico_v2/Post.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _urlBase = "https://jsonplaceholder.typicode.com";

  Future<List<Post>> _recuperarPostagens() async {
    http.Response response = await http.get(_urlBase + "/posts");
    var dadosJson = json.decode(response.body);

    List<Post> postagens = List();
    for (var post in dadosJson) {
      print("post: " + post["title"]);
      Post p = Post(post["userId"], post["id"], post["title"], post["body"]);
      postagens.add(p);
    }
    return postagens;
    //print( postagens.toString() );
  }

  _post() async {
    var post = new Post(10, null, "meu titulo", "corpo da requisicao");
    var corpo = jsonEncode(post.toJson());

    http.Response response = await http.post(_urlBase + "/posts",
        headers: {"Content-type": "application/json; charset=UTF-8"},
        body: corpo);

    print(response.statusCode);
    print(response.body);
  }

  _put() async {
    var corpo = jsonEncode({
      "userId": 120,
      "id": null,
      "title": "Titulo alterado",
      "body": "Corpo da postagem alterado"
    });

    http.Response response = await http.put(_urlBase + "/posts/2",
        headers: {"Content-type": "application/json; charset=UTF-8"},
        body: corpo);

    print(response.statusCode);
    print(response.body);
  }

  _patch() async {
    var corpo = jsonEncode({
      "userId": 120,
      "id": null,
      "title": "Titulo alterado",
      "body": "Corpo da postagem alterado"
    });

    http.Response response = await http.patch(_urlBase + "/posts/2",
        headers: {"Content-type": "application/json; charset=UTF-8"},
        body: corpo);

    print(response.statusCode);
    print(response.body);
  }

  _delete() async {
    http.Response response = await http.delete(_urlBase + "/posts/2");

    print(response.statusCode);
    print(response.body);
  }

  // diz respeito a dados q ainda vou recuperar (dados futuros)
  /* Future<Map> RecuperarPreco() async {
    String url = "https://blockchain.info/ticker";
    http.Response response = await http.get(url);
    return json.decode(response.body);
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Consumo de serviço avançado"),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                RaisedButton(
                  child: Text("Salvar"),
                  onPressed: _post,
                ),
                RaisedButton(
                  child: Text("Atualizar"),
                  onPressed: _patch,
                ),
                RaisedButton(
                  child: Text("Deletar"),
                  onPressed: _delete,
                ),
              ],
            ),
            Expanded(
              //para trabalhar com mais de um edget em uma layout que contem uma lista (future), precisamos usar por a lista dentro de um Expanded
              child: FutureBuilder<List<Post>>(
                future: _recuperarPostagens(),
                builder: (context, snapshot) {
                  switch (snapshot.connectionState) {
                    case ConnectionState.none:
                    case ConnectionState.waiting:
                      return CircularProgressIndicator();
                      break;
                    case ConnectionState.active:
                    case ConnectionState.done:
                      if (snapshot.hasError) {
                        print("Lista eerro ao carregar");
                        //resultado = "erro ao carregar os dados";
                      } else {
                        print("lista: carregou!! ");
                        return ListView.builder(
                            itemCount: snapshot.data.length,
                            itemBuilder: (context, index) {
                              List<Post> lista = snapshot.data;
                              Post post = lista[index];

                              return ListTile(
                                title: Text(post.title),
                                subtitle: Text(post.id.toString()),
                              );
                            });
                        /*double valor = snapshot.data["BRL"]["buy"];
              resultado = "Preço do bitcoin : ${valor.toString()}";*/
                      }
                      break;
                  }
                  return null;
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
