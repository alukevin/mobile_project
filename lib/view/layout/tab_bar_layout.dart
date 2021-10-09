import 'package:flutter/material.dart';
import 'package:atividade_3/view/screens/anuncio_screen.dart';
import 'package:atividade_3/view/screens/List_screen.dart';

class MyTabBarLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: MaterialApp(
          home: Scaffold(
              appBar: AppBar(
                title: Text("Dougin Motors"),
                bottom: TabBar(
                  tabs: [
                    Tab(
                        child: Text(
                          "Nossos Carros",
                          textAlign: TextAlign.center,
                        ),
                        icon: Icon(Icons.person)),
                    Tab(
                        child: Text(
                          "Noticias",
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
        ));
  }
}
