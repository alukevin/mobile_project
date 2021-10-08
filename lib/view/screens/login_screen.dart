import 'package:atividade_3/logic/authentication/auth_bloc.dart';
import 'package:atividade_3/logic/authentication/auth_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formkey = new GlobalKey();
    String username;
    String password;
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Form(
        key: formkey,
        child: Column(
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
            TextFormField(
              decoration: InputDecoration(labelText: 'Usuário'),
              validator: (String inValue) {
                if (inValue.length == 0) {
                  return "Insira algo como username";
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
                if (inValue.length < 4) {
                  return "Tem que ter ao menos 4 caracters";
                }
                return null;
              },
              onSaved: (String inValue) {
                password = inValue;
              },
            ),
            Divider(),
            ElevatedButton(
              onPressed: () {
                if (formkey.currentState.validate()) {
                  formkey.currentState.save();
                  // Lançando evento
                  BlocProvider.of<AuthBloc>(context)
                      .add(LoginUser(username: username, password: password));
                }
              },
              child: Text("Login"),
            ),

            // receptoresEvents(),
          ],
        ),
      ),
    );
  }
}
