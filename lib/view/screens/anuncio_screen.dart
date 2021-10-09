import 'package:atividade_3/logic/authentication/auth_bloc.dart';
import 'package:atividade_3/logic/authentication/auth_event.dart';
import 'package:atividade_3/view/screens/home_screen.dart';
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
        title: "Feed de Noticias",
        home: Scaffold(
            body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(150),
                  border: Border.all(color: Colors.black)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(150),
                child: Image.asset("assets/Logo.png",
                    height: 350, fit: BoxFit.fitHeight),
              ),
            ),
            Container(
              child: Image.asset('noticia1.jpg'),
            ),
            Container(
              child: Image.asset('noticia2.jpg'),
            ),
            Container(
              child: Image.asset('noticia3.jpg'),
            ),
            Container(
              child: Image.asset('noticia4.jpg'),
            ),
            FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              tooltip: "Logout",
              child: Icon(Icons.logout),
            )
          ],
        )));
  }
}
