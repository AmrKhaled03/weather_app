import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weatherly/constants/app_strings.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              spacing: 20,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 30),
                Center(
                  child: Image.asset(
                    "assets/images/weather-news.png",
                    width: 300,
                    height: 300,
                  ),
                ),
                Text(
                  "Weatherly",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 29, 187, 231),
                    fontSize: 70,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Weatherly offers real-time updates, forecasts & alerts based on location. It shows temp, humidity, wind speed & rain chance via an intuitive Flutter UI. Features include hourly & weekly forecasts, radar maps & alerts. Built with Flutter, it ensures a smooth, cross-platform experience for accurate weather info.",
                  style: TextStyle(color: Colors.blueGrey, fontSize: 14),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.green),
                    ),
                    onPressed: () {
                      Get.offAllNamed(AppStrings.homeRoute);
                    },
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
