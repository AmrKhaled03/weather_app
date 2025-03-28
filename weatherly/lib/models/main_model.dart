class MainModel {
  final double temp;
  final double feelsLike;
  final double tempMin;
  final double tempMax;
  final int pressure;
  final int humidity;
  final int seaLevel;
  final int grndLevel;
  MainModel({
    required this.temp,
    required this.feelsLike,
    required this.tempMax,
    required this.tempMin,
    required this.pressure,
    required this.humidity,
    required this.seaLevel,
    required this.grndLevel,
  });
  factory MainModel.fromJson(Map<String, dynamic> json) {
    return MainModel(
      temp: json["temp"],
      feelsLike: json["feels_like"],
      tempMin: json["temp_min"],
      tempMax: json["temp_max"],
      pressure: json["pressure"],
      humidity: json["humidity"],
      seaLevel: json["sea_level"] ?? 0,
      grndLevel: json["grnd_level"] ?? 0,
    );
  }
}
