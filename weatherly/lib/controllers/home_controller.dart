import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:weatherly/models/weather_model.dart';

class HomeController extends GetxController {
  TextEditingController searchController = TextEditingController();
  WeatherModel? weatherModel;
  bool isLoading = false;
  String errorMessage = "";
  Future<void> fetchWeather(String city) async {
    if (city.trim().isEmpty) {
      errorMessage = "Enter city name!";
      update();
      return;
    }
    final apiKey = "2c50d7aa09b79ea7e2c91f33d36e1daf";
    final url =
        "https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey&units=metric";
    isLoading = true;
    errorMessage = "";
    update();
    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        weatherModel = WeatherModel.fromJson(data);
      } else {
        errorMessage = "City not found!";
      }
    } catch (e) {
      errorMessage = "Failed to load weather data!";
    } finally {
      isLoading = false;
      update();
    }
  }

  void displayWeather(WeatherModel weather) {
    debugPrint("City: ${weather.id}, ${weather.clouds.all}");
  }
}
