import 'package:atividade_3/logic/authentication/auth_bloc.dart';
import 'package:atividade_3/logic/authentication/auth_event.dart';
import 'package:atividade_3/view/layout/tab_bar_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenOnix extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formkey = new GlobalKey();

    return Scaffold(
        appBar: AppBar(title: Text("Chevrolet Onix")),
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(150),
                  border: Border.all(color: Colors.black)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(150),
                child: Image.asset("assets/onix.jpg",
                    height: 350, fit: BoxFit.fitHeight),
              ),
            ),
            Container(
              child: Text('Chevrolet Onix'),
            ),
            Container(
              child: Text('Valor: 67.990 reais'),
            ),
            Divider(),
            ElevatedButton(
              onPressed: () {
                showAlertDialog1(context);
              },
              child: Text("Comprar"),
            ),
          ],
        ));
  }

  showAlertDialog1(BuildContext context) {
    // configura o button
    // ignore: deprecated_member_use
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MyTabBarLayout()),
        );
      },
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
