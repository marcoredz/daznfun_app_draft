import 'package:daznfun_app_draft/apptheme.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final theme = DaznTheme.theme();
  final GlobalKey<FormState> _loginFormKey = GlobalKey<FormState>();
  bool _passwordVisible = false;
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;
  TextEditingController usernameCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Container(
          decoration: const BoxDecoration(color: DaznCP.loginBgColor),
          child: Column(
            children: [
              Image.asset(
                'assets/images/logo_claim.png',
                color: Colors.white,
                width: 150,
                height: 150,
              ),
              Text(
                "YOU MUST LOG IN TO BE ABLE TO PLAY",
                style: theme.textTheme.headline3,
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Form(
                  key: _loginFormKey,
                  autovalidateMode: _autovalidateMode,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: usernameCtrl,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Username or email are requested';
                          }
                        },
                        decoration: const InputDecoration(labelText: "Username or email"),
                      ),
                      const SizedBox(height: 27),
                      TextFormField(
                        controller: passwordCtrl,
                        obscureText: !_passwordVisible,
                        onChanged: (value) {
                          if (value.isEmpty) {
                            setState(() => _autovalidateMode = AutovalidateMode.onUserInteraction);
                          }
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Password is requested';
                          }
                        },
                        decoration: InputDecoration(
                          labelText: "Password",
                          suffixIcon: IconButton(
                            icon: Icon(
                              _passwordVisible ? Icons.visibility : Icons.visibility_off,
                              color: Colors.white,
                            ),
                            onPressed: () => setState(() => _passwordVisible = !_passwordVisible),
                          ),
                        ),
                      ),
                      const SizedBox(height: 27),
                      Row(
                        children: [
                          Expanded(
                            child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                "ENTER",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Text(
                "Forgot the password? Click here!",
                style: theme.textTheme.bodyText1,
              ),
              const SizedBox(height: 15),
              const Divider(
                thickness: 1,
                color: DaznCP.loginGray,
              ),
              const SizedBox(height: 7),
              Text(
                "No account yet?",
                style: theme.textTheme.bodyText1,
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(DaznCP.secondary),
                            foregroundColor: MaterialStateProperty.all<Color>(Colors.white)),
                        child: const Text(
                          "Sign up",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
