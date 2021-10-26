import 'package:daznfun_app_draft/apptheme.dart';
import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({
    Key? key,
    this.title = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = DaznTheme.theme();
    return SizedBox(
      child: Container(
        decoration: const BoxDecoration(
          color: DaznCP.secondary, //Colors.black.withOpacity(0.5)
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: theme.textTheme.headline2,
          ),
        ),
      ),
    );
  }
}
