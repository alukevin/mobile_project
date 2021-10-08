import 'package:atividade_3/logic/authentication/auth_bloc.dart';
import 'package:atividade_3/logic/authentication/auth_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {    
    var bio = "Olá, meu nome é Douglas Moreira da Silva, tenho 20 anos, sou natural de "
            "Campinas - SP e sou estudante de TADS-019 na FT da Unicamp. Atualmente, " +
        "estou estagiando na LARCOM, um laboratório de pesquisas da Unicamp, " +
        "na parte de desenvolvimento no ERP da Oracle chamado Netsuite.";
    return MaterialApp(
        title: "Douglas Moreira",
        home: Scaffold(
            appBar: AppBar(title: Text("Douglas Moreira")),
            body: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(150),
                    border: Border.all(color: Colors.black)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(150),
                  child: Image.asset("assets/Douglas.jpg",
                      height: 350, fit: BoxFit.fitHeight),
                ),
              ),
                Container(
                  child: Text(bio),
                ),
                FloatingActionButton(
                  onPressed: () {
                    BlocProvider.of<AuthBloc>(context).add(Logout());
                  },
                  tooltip: "Logout",
                  child: Icon(Icons.logout),
                )
              ],
            )));
  }
}
