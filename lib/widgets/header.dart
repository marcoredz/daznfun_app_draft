import 'package:daznfun_app_draft/apptheme.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [
            0.1,
            1,
          ],
          colors: [
            DaznCP.accent,
            DaznCP.mainBackground,
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            Icon(
              Icons.account_circle_outlined,
              color: Colors.white,
              size: 30,
            ),
          ],
        ),
      ),
    );
  }
}
