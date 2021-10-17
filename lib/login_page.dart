import 'package:daznfun_app_draft/apptheme.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final theme = DaznTheme.theme();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Text(
          "Login Page",
          style: theme.textTheme.headline1,
        ),
      ),
    );
  }
}
