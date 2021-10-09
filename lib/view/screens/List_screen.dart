import 'package:atividade_3/logic/authentication/auth_bloc.dart';
import 'package:atividade_3/logic/authentication/auth_event.dart';
import 'package:atividade_3/view/screens/corolla_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formkey = new GlobalKey();
    return MaterialApp(
        title: "Nossos Carros",
        home: Scaffold(
          body: buildListView(context),
        ));
  }

  buildListView(context) {
    GlobalKey<FormState> formkey = new GlobalKey();
    return ListView(
      children: <Widget>[
        ListTile(
          leading: Image.asset('corolla.jpg'),
          title: Text('Toyota Corrola'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ScreenCorolla()),
            );
          },
        ),
        ListTile(
          leading: Image.asset('honda.jpg'),
          title: Text('Honda Civic'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ScreenCorolla()),
            );
          },
        ),
        ListTile(
          leading: Image.asset('meriva.jpg'),
          title: Text('Chevrolet Meriva'),
          onTap: () {},
        ),
        ListTile(
          leading: Image.asset('onix.jpg'),
          title: Text('Chevrolet Onix'),
          onTap: () {},
        )
      ],
    );
  }
}
