import 'package:daznfun_app_draft/apptheme.dart';
import 'package:flutter/material.dart';

class PredictionCard extends StatelessWidget {
  final String title;
  final String tinyDescription;
  const PredictionCard({
    Key? key,
    this.title = "",
    this.tinyDescription = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = DaznTheme.theme();
    return SizedBox(
      child: Container(
        decoration: const BoxDecoration(
          color: DaznCP.sectionBackground,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: theme.textTheme.bodyText1,
              ),
              const SizedBox(height: 5),
              Text(
                "25/10/2021",
                style: theme.textTheme.bodyText2,
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Container(
                    color: DaznCP.green,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "3",
                        style: theme.textTheme.headline3,
                      ),
                    ),
                  ),
                  Container(
                    color: DaznCP.red,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "2",
                        style: theme.textTheme.headline3,
                      ),
                    ),
                  ),
                  Container(
                    color: DaznCP.gray,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "4",
                        style: theme.textTheme.headline3,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
