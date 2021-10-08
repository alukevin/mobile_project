import 'package:atividade_3/logic/authentication/auth_bloc.dart';
import 'package:atividade_3/logic/authentication/auth_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CadastroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formkey = new GlobalKey();
    String username;
    String password;
    String confirmPassword;
    return Scaffold(
        appBar: AppBar(title: Text("Cadastro")),
        body: Form(
            key: formkey,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(labelText: 'Usuário'),
                  validator: (String inValue) {
                    if (inValue.length == 0) {
                      return "É necessario colocar um nome de usuário";
                    }
                    return null;
                  },
                  onSaved: (String inValue) {
                    username = inValue;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Senha'),
                  validator: (String inValue) {
                    if (inValue.length == 0) {
                      return "É necessario colocar uma senha";
                    }
                    if (inValue.length < 6) {
                      return "Tem que ter ao menos 6 caracteres";
                    }
                    return null;
                  },
                  onSaved: (String inValue) {
                    password = inValue;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Confirme a Senha'),
                  validator: (String inValue) {
                    if (inValue.length == 0) {
                      return "É necessario confirmar a senha";
                    }
                    if (inValue.length < 6) {
                      return "Tem que ter ao menos 6 caracteres";
                    }
                    return null;
                  },
                  onSaved: (String inValue) {
                    confirmPassword = inValue;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'E-mail'),
                  validator: (String inValue) {
                    if (inValue.length == 0) {
                      return "É necessario colocar um E-mail";
                    }
                    if (inValue.length < 6) {
                      return "Tem que ter ao menos 6 caracteres";
                    }
                    return null;
                  },
                ),
                // Quero acrescentar um campo radio
                Divider(),
                ElevatedButton(
                  onPressed: () {
                    if (formkey.currentState.validate()) {
                      formkey.currentState.save();
                      // Lançando evento
                      BlocProvider.of<AuthBloc>(context).add(CadastradoEvent());
                    }
                  },
                  child: Text("Cadastrar"),
                ),
              ],
            )));
  }
}
