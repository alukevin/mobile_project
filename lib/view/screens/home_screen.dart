import 'package:atividade_3/logic/authentication/auth_bloc.dart';
import 'package:atividade_3/logic/authentication/auth_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formkey = new GlobalKey();
    return MaterialApp(
      title: 'Home',
      home: Scaffold(
        appBar: AppBar(title: Text('Home')),
        body: Form(
          key: formkey,
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  if (formkey.currentState.validate()) {
                    formkey.currentState.save();
                    // Lançando evento
                    BlocProvider.of<AuthBloc>(context).add(LoginScreen());
                  }
                },
                child: Text("Login"),
              ),
              Divider(),
              ElevatedButton(
                onPressed: () {
                  if (formkey.currentState.validate()) {
                    formkey.currentState.save();
                    // Lançando evento
                    BlocProvider.of<AuthBloc>(context).add(CadastroScreen());
                  }
                },
                child: Text("Cadastro"),
              ),
            ],
          ),
        )));
  }
}
