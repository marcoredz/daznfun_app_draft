import 'dart:convert';

import 'package:daznfun_app_draft/models/prediction.dart';
import 'package:flutter/services.dart';

class MockPredictionsService {
  Future<List<Prediction>> getOpenPredictions() async {
    // Simulate api request wait time
    await Future.delayed(const Duration(milliseconds: 1000));
    // Load json from file system
    final String dataString = await _loadAsset("assets/sample_data/open_predictions.json");

    // Decode to json
    final Map<String, dynamic> json = jsonDecode(dataString);

    // Go through each recipe and convert json to ExploreRecipe object.
    if (json['open_predictions'] != null) {
      final predictions = <Prediction>[];
      json['open_predictions'].forEach((v) {
        predictions.add(Prediction.fromJson(v));
      });
      return predictions;
    } else {
      return [];
    }
  }

  Future<String> _loadAsset(String path) {
    return rootBundle.loadString(path);
  }
}
