import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/state_manager.dart';
import 'package:weatherly/constants/app_strings.dart';
import 'package:weatherly/controllers/home_controller.dart';

class HomeScreen extends GetWidget<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            AppStrings.appTitle,
            style: const TextStyle(
              color: Color.fromARGB(255, 29, 187, 231),
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: GetBuilder<HomeController>(
          builder: (controller) {
            return controller.isLoading
                ? const Center(child: CircularProgressIndicator())
                : Padding(
                  padding: const EdgeInsets.all(20),
                  child: SingleChildScrollView(
                    child: Column(
                      spacing: 20,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextFormField(
                          controller: controller.searchController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: const BorderSide(
                                color: Color.fromARGB(255, 29, 187, 231),
                              ),
                            ),
                            errorBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: const BorderSide(
                                color: Color.fromARGB(255, 29, 187, 231),
                              ),
                            ),
                            labelText: "Search",
                            labelStyle: const TextStyle(
                              color: Color.fromARGB(255, 29, 187, 231),
                              fontSize: 20,
                            ),
                            hintText: "Enter Thy City",
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: TextButton(
                            style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all(
                                const Color.fromARGB(255, 215, 163, 4),
                              ),
                            ),
                            onPressed: () {
                              controller.fetchWeather(
                                controller.searchController.text,
                              );
                            },
                            child: const Text(
                              "Search",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        if (controller.errorMessage.isNotEmpty)
                          Text(
                            controller.errorMessage,
                            style: const TextStyle(
                              color: Colors.red,
                              fontSize: 18,
                            ),
                          )
                        else if (controller.weatherModel != null)
                          InkWell(
                            onTap: () {
                              Get.toNamed(
                                AppStrings.detailsRoute,
                                arguments: controller.weatherModel,
                              );
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 150,
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: Colors.blue[100],
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "City: ${controller.weatherModel!.name}",
                                    style: const TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Temperature: ${controller.weatherModel!.main.temp}°C",
                                    style: const TextStyle(fontSize: 20),
                                  ),
                                  Text(
                                    "Clouds: ${controller.weatherModel!.clouds.all}%",
                                    style: const TextStyle(fontSize: 20),
                                  ),
                                ],
                              ),
                            ),
                          )
                        else
                          const Text(
                            "Enter a city to get weather data",
                            style: TextStyle(fontSize: 18),
                          ),
                      ],
                    ),
                  ),
                );
          },
        ),
      ),
    );
  }
}
