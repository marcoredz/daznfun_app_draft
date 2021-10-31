import 'package:daznfun_app_draft/apptheme.dart';
import 'package:daznfun_app_draft/models/prediction.dart';
import 'package:flutter/material.dart';

class PredictionCard extends StatelessWidget {
  final Prediction data;
  const PredictionCard({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = DaznTheme.theme();
    return Container(
      width: 160,
      decoration: const BoxDecoration(
        color: DaznCP.sectionBackground,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              data.title,
              style: theme.textTheme.bodyText1,
            ),
            const SizedBox(height: 5),
            Text(
              data.description,
              style: theme.textTheme.bodyText2,
            ),
            const SizedBox(height: 5),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: DaznCP.green,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Center(
                          child: Text(
                            data.nTaken.toString(),
                            style: theme.textTheme.headline3,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: DaznCP.red,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Center(
                          child: Text(
                            data.nMissed.toString(),
                            style: theme.textTheme.headline3,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: DaznCP.gray,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Center(
                          child: Text(
                            data.nWaiting.toString(),
                            style: theme.textTheme.headline3,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
