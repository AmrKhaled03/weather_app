import 'package:weatherly/models/clouds_model.dart';
import 'package:weatherly/models/coord_model.dart';
import 'package:weatherly/models/main_model.dart';
import 'package:weatherly/models/sys_model.dart';
import 'package:weatherly/models/weather_info_model.dart';
import 'package:weatherly/models/wind_model.dart';

class WeatherModel {
  final int timezone;
  final int id;
  final String name;
  final int cod;
  final List<WeatherInfoModel> wearherInfo;
  final WindModel wind;
  final SysModel sys;
  final MainModel main;
  final CoordModel coord;
  final CloudsModel clouds;
  final String base;
  final int visibility;
  final int dt;

  WeatherModel({
    required this.timezone,
    required this.id,
    required this.name,
    required this.cod,
    required this.wearherInfo,
    required this.wind,
    required this.sys,
    required this.main,
    required this.coord,
    required this.clouds,
    required this.base,
    required this.visibility,
    required this.dt,
  });
  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      timezone: json['timezone'],
      id: json['id'],
      name: json['name'],
      cod: json['cod'],
    wearherInfo: (json["weather"] as List?)
          ?.map((item) => WeatherInfoModel.fromJson(item))
          .toList() ?? [],
      wind: WindModel.fromJson(json['wind']),
      sys: SysModel.fromJson(json['sys']),
      main: MainModel.fromJson(json['main']),
      coord: CoordModel.fromJson(json['coord']),
      clouds: CloudsModel.fromJson(json['clouds']),
      base: json['base'],
      visibility: json['visibility'],
      dt: json['dt'],
    );
  }
}
