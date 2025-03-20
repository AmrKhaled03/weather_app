import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/instance_manager.dart';
import 'package:weatherly/models/weather_model.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WeatherModel model = Get.arguments;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Details",
            style: const TextStyle(
              color: Color.fromARGB(255, 29, 187, 231),
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                spacing: 20,
                children: [
                  Text(
                    "City: ${model.name}",
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "City ID: ${model.id}",
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    "Timezone: ${model.timezone}",
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    "Status Code: ${model.cod}",
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    "Weather: ${model.wearherInfo[0].description}",
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    "Wind Direction: ${model.wind.deg}°",
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    "Wind Gust: ${model.wind.gust} m/s",
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    "Wind Speed: ${model.wind.speed} m/s",
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    "Country: ${model.sys.country}",
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    "Sunrise: ${model.sys.sunrise}",
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    "Sunset: ${model.sys.sunset}",
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    "Feels Like: ${model.main.feelsLike}°C",
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    "Ground Level Pressure: ${model.main.grndLevel} hPa",
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    "Humidity: ${model.main.humidity}%",
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    "Pressure: ${model.main.pressure} hPa",
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    "Sea Level Pressure: ${model.main.seaLevel} hPa",
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    "Temperature: ${model.main.temp}°C",
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    "Max Temp: ${model.main.tempMax}°C",
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    "Min Temp: ${model.main.tempMin}°C",
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    "Latitude: ${model.coord.lat}",
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    "Longitude: ${model.coord.lon}",
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    "Cloudiness: ${model.clouds.all}%",
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    "Base: ${model.base}",
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    "Visibility: ${model.visibility} m",
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    "Timestamp: ${model.dt}",
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
