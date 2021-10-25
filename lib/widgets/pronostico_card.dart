import 'package:flutter/material.dart';

class PronosticoCard extends StatelessWidget {
  final String title;
  final String tinyDescription;
  const PronosticoCard({
    Key? key,
    this.title = "",
    this.tinyDescription = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 50,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.5),
          borderRadius: BorderRadius.circular(5),
        ),
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text("Title"),
        ),
      ),
    );
  }
}
