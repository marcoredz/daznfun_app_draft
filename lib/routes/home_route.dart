import 'package:daznfun_app_draft/apptheme.dart';
import 'package:daznfun_app_draft/widgets/header.dart';
import 'package:daznfun_app_draft/widgets/pronostico_card.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeRoute extends StatefulWidget {
  const HomeRoute({Key? key}) : super(key: key);

  @override
  State<HomeRoute> createState() => _HomeRouteState();
}

class _HomeRouteState extends State<HomeRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: RadialGradient(
              center: Alignment.topLeft,
              radius: 1.5,
              colors: [DaznCP.accent, DaznCP.mainBackground],
              stops: [0.3, 1]),
        ),
        child: Column(
          children: [const Header(), PronosticoCard()],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          SharedPreferences prefs = await SharedPreferences.getInstance();
          prefs.setBool('issigned', false);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
