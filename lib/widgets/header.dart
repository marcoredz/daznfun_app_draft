import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          alignment: Alignment.bottomLeft,
          scale: 5,
          image: AssetImage('assets/images/logo_claim.png'),
        ),
      ),
      height: 150,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            Icon(
              Icons.account_circle_outlined,
              color: Colors.white,
              size: 35,
            ),
          ],
        ),
      ),
    );
  }
}
