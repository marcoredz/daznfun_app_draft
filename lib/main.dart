import 'package:daznfun_app_draft/apptheme.dart';
import 'package:daznfun_app_draft/login_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isSigned = false;

  @override
  void initState() {
    Future<SharedPreferences> prefs = SharedPreferences.getInstance();
    prefs.then((value) => setState(() => _isSigned = value.getBool('issigned') ?? false));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DAZN FUN',
      theme: DaznTheme.theme(),
      home: _isSigned ? const MyHomePage() : const LoginPage(),
    );
  }
}
