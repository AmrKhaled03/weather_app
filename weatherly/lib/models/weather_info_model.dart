class WeatherInfoModel {
  final int id;
  final String main;
  final String description;
  final String icon;
  WeatherInfoModel({
    required this.id,
    required this.main,
    required this.description,
    required this.icon,
  });
  factory WeatherInfoModel.fromJson(Map<String, dynamic> json) {
    return WeatherInfoModel(
      id: json["id"],
      main: json["main"],
      description: json["description"],
      icon: json["icon"],
    );
  }
}
