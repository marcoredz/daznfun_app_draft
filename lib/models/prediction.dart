class Prediction {
  String title;
  String description;
  int nTaken;
  int nMissed;
  int nWaiting;
  int jolly; // 0: waiting, 1: taken, 2: missed

  Prediction({
    this.title = "",
    this.description = "",
    this.nTaken = 0,
    this.nMissed = 0,
    this.nWaiting = 8,
    this.jolly = 0,
  });

  factory Prediction.fromJson(Map<String, dynamic> json) {
    return Prediction(
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      nTaken: json['nTaken'] ?? 0,
      nMissed: json['nMissed'] ?? 0,
      nWaiting: json['nWaiting'] ?? 0,
      jolly: json['jolly'] ?? 0,
    );
  }
}
