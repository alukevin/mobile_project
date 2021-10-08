import 'package:atividade_3/logic/authentication/auth_bloc.dart';
import 'package:atividade_3/logic/authentication/auth_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CorollaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formkey = new GlobalKey();
    
    return MaterialApp(
        title: "Toyota Corolla",
        home: Scaffold(
            appBar: AppBar(title: Text("Toyota Corolla")),
            body: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(150),
                      border: Border.all(color: Colors.black)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(150),
                    child: Image.asset("assets/corolla.jpg",
                        height: 350, fit: BoxFit.fitHeight),
                  ),
                ),
                Container(
                  child: Text('Toyota Corrola'),
                ),
                Container(
                  child: Text('Valor: R$82.900,00'),
                ),
                Divider(),
                
                ElevatedButton(
                  onPressed: () {
                    showAlertDialog1(context);
                  },
                  child: Text("Comprar"),
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
  showAlertDialog1(BuildContext context) { 
      // configura o button
    // ignore: deprecated_member_use
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () { },
    );
    // configura o  AlertDialog
    AlertDialog alerta = AlertDialog(
      title: Text("Sucesso"),
      content: Text("Sua compra foi realizada com sucesso"),
      actions: [
        okButton,
      ],
    );
    // exibe o dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alerta;
      },
    );
  }
}
