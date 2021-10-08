import 'package:atividade_3/logic/authentication/auth_bloc.dart';
import 'package:atividade_3/logic/authentication/auth_state.dart';
import 'package:atividade_3/view/screens/anuncio_screen.dart';
import 'package:atividade_3/view/screens/cadastro_screen.dart';
import 'package:atividade_3/view/screens/corolla_screen.dart';
import 'package:atividade_3/view/screens/home_screen.dart';
import 'package:atividade_3/view/screens/List_screen.dart';
import 'package:atividade_3/view/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'layout/tab_bar_layout.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      // ignore: missing_return
      builder: (context, state) {
        if (state is Unauthenticated) {
          return HomeScreen();
        }
        if (state is Login) {
          return ThirdScreen();
        } else if (state is Cadastro) {
          return CadastroScreen();
        } else if (state is CadastradoState) {
          return ThirdScreen();
        } else if (state is Honda) {
          return CorollaScreen();
        } else {
          return MyTabBarLayout();
        }
      },
    );
  }
}
