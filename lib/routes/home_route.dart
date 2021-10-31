import 'package:daznfun_app_draft/apptheme.dart';
import 'package:daznfun_app_draft/models/prediction.dart';
import 'package:daznfun_app_draft/sample_data/mock_predictions_service.dart';
import 'package:daznfun_app_draft/widgets/header.dart';
import 'package:daznfun_app_draft/widgets/open_predictions.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeRoute extends StatefulWidget {
  const HomeRoute({Key? key}) : super(key: key);

  @override
  State<HomeRoute> createState() => _HomeRouteState();
}

class _HomeRouteState extends State<HomeRoute> {
  final mockPredictionsService = MockPredictionsService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Header(),
          const SizedBox(height: 10),
          FutureBuilder(
            future: mockPredictionsService.getOpenPredictions(),
            builder: (context, AsyncSnapshot<List<Prediction>> snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                // final predictions = snapshot.data ?? [];
                return OpenPredictions(
                  items: snapshot.data ?? [],
                );
              } else {
                return const Center(
                  child: Padding(
                    padding: EdgeInsets.all(50),
                    child: CircularProgressIndicator(
                      color: DaznCP.accent,
                    ),
                  ),
                );
              }
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          SharedPreferences prefs = await SharedPreferences.getInstance();
          prefs.setBool('issigned', false);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
