import 'package:daznfun_app_draft/apptheme.dart';
import 'package:daznfun_app_draft/routes/home_route.dart';
import 'package:daznfun_app_draft/routes/login_route.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  runApp(MyApp(isSigned: prefs.getBool('issigned') ?? false));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, this.isSigned = false}) : super(key: key);
  final bool isSigned;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DAZN FUN',
      theme: DaznTheme.theme(),
      home: isSigned ? const HomeRoute() : const LoginScreen(),
    );
  }
}
