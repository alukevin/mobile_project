import 'package:atividade_3/logic/authentication/auth_bloc.dart';
import 'package:atividade_3/logic/authentication/auth_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formkey = new GlobalKey();
    return MaterialApp(
        title: "Nossos Carros",
        home: Scaffold(
          appBar: AppBar(
              title: Row(
            children: [Text('Nossos Carros'), Image.asset('Logo.png')],
          )),
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
            if (formkey.currentState.validate()) {
              formkey.currentState.save();
              // Lançando evento
              BlocProvider.of<AuthBloc>(context).add(CorollaScreen());
            }
          },
        ),
        ListTile(
          leading: Image.asset('honda.jpg'),
          title: Text('Honda Civic'),
          onTap: () {
            if (formkey.currentState.validate()) {
              formkey.currentState.save();
              // Lançando evento
              BlocProvider.of<AuthBloc>(context).add(HondaScreen());
            }
          },
        ),
        ListTile(
          leading: Image.asset('meriva.jpg'),
          title: Text('Chevrolet Meriva'),
          onTap: () {
            if (formkey.currentState.validate()) {
              formkey.currentState.save();
              // Lançando evento
              BlocProvider.of<AuthBloc>(context).add(MerivaScreen());
            }
          },
        ),
        ListTile(
          leading: Image.asset('onix.jpg'),
          title: Text('Chevrolet Onix'),
          onTap: () {
            if (formkey.currentState.validate()) {
              formkey.currentState.save();
              // Lançando evento
              BlocProvider.of<AuthBloc>(context).add(OnixScreen());
            }
          },
        )
      ],
    );
  }
}
