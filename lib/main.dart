import 'package:atividade_3/logic/authentication/auth_bloc.dart';
import 'package:atividade_3/logic/authentication/auth_state.dart';
import 'package:atividade_3/view/screens/anuncio_screen.dart';
import 'package:atividade_3/view/wrapper.dart';
import 'package:flutter/material.dart';
import 'package:atividade_3/view/layout/tab_bar_layout.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyFirstApp());
}

class MyFirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Atividade 04",
      home: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => AuthBloc(Unauthenticated())),
        ],
        child: Wrapper(),
      ),
    );
  }
}
