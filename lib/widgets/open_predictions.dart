import 'package:daznfun_app_draft/widgets/prediction_card.dart';
import 'package:daznfun_app_draft/widgets/section_title.dart';
import 'package:flutter/material.dart';

class OpenPredictions extends StatelessWidget {
  const OpenPredictions({Key? key, this.items = const []}) : super(key: key);
  final List<String> items;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(
            title: "PRONOSTICI APERTI",
          ),
          const SizedBox(height: 10),
          // ListView.builder(
          //   itemCount: items.length,
          //   scrollDirection: Axis.horizontal,
          //   itemBuilder: (context, index) {
          //     return PredictionCard(
          //       title: items[index],
          //     );
          //   },
          // ),
          Row(
            children: const [
              PredictionCard(
                title: "Serie A",
              ),
              PredictionCard(
                title: "LaLiga",
              )
            ],
          )
        ],
      ),
    );
  }
}
