import 'package:atividade_3/data/local/local_database.dart';
import 'package:atividade_3/logic/authentication/auth_bloc.dart';
import 'package:atividade_3/logic/authentication/auth_event.dart';
import 'package:atividade_3/models/usuario.dart';
import 'package:atividade_3/view/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class FirstScreen extends StatelessWidget {
  List<Usuario> usuarios =
      DatabaseLocalServer.helper.getUsuarios() as List<Usuario>;
  @override
  Widget build(BuildContext context) {
    // var bio = "Olá, meu nome é Douglas Moreira da Silva, tenho 20 anos, sou natural de "
    //         "Campinas - SP e sou estudante de TADS-019 na FT da Unicamp. Atualmente, " +
    //     "estou estagiando na LARCOM, um laboratório de pesquisas da Unicamp, " +
    //     "na parte de desenvolvimento no ERP da Oracle chamado Netsuite.";
    return MaterialApp(
        title: "Usuarios",
        home: Scaffold(
          body: ListView.builder(
            padding: EdgeInsets.all(10.0),
            itemCount: usuarios.length,
            itemBuilder: (context, index) {
              return _listaContatos(context, index);
            },
          ),
        ));
  }

  _listaContatos(BuildContext context, int index) {
    return Card(
      child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(usuarios[index].usuario ?? "",
                          style: TextStyle(fontSize: 20)),
                      Text(usuarios[index].email ?? "",
                          style: TextStyle(fontSize: 15))
                    ],
                  )),
              IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {
                  _confirmaExclusao(context, usuarios[index].id, index);
                },
              )
            ],
          )),
    );
  }

  void _confirmaExclusao(BuildContext context, int usuarioId, index) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Excluir Usuario"),
            content: Text('Confirma a exclusão do Usuário'),
            actions: <Widget>[
              // ignore: deprecated_member_use
              FlatButton(
                  child: Text("Cancelar"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  }),
              // ignore: deprecated_member_use
              FlatButton(
                onPressed: () {
                  usuarios.removeAt(index);
                  DatabaseLocalServer.helper.deleteNote(usuarioId);
                },
                child: Text('Excluir'),
              )
            ],
          );
        });
  }
}
