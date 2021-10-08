import 'package:flutter/material.dart';
import 'package:atividade_3/view/screens/anuncio_screen.dart';
import 'package:atividade_3/view/screens/List_screen.dart';

class MyTabBarLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: Text("Atividade 4"),
            bottom: TabBar(
              tabs: [
                Tab(
                    child: Text(
                      "Douglas Moreira",
                      textAlign: TextAlign.center,
                    ),
                    icon: Icon(Icons.person)),
                Tab(
                    child: Text(
                      "Kevin Miguel",
                      textAlign: TextAlign.center,
                    ),
                    icon: Icon(Icons.person)),
              ],
            ),
          ),
          body: TabBarView(children: [
            SecondScreen(),
            //Text("Lewartosky"),
            FirstScreen(),
          ])),
    );
  }
}
