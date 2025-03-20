import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:weatherly/constants/app_strings.dart';
import 'package:weatherly/utils/app_bindings.dart';
import 'package:weatherly/views/screens/details_screen.dart';
import 'package:weatherly/views/screens/home_screen.dart';
import 'package:weatherly/views/screens/onboarding_screen.dart';
import 'package:weatherly/views/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: AppStrings.appTitle,
      theme: ThemeData(),
      getPages: [
        GetPage(name: AppStrings.splashRoute, page: () => const SplashScreen()),
        GetPage(name: AppStrings.homeRoute, page: () => const HomeScreen()),
        GetPage(
          name: AppStrings.detailsRoute,
          page: () => const DetailsScreen(),
        ),
        GetPage(
          name: AppStrings.onboardingRoute,
          page: () => const OnboardingScreen(),
        ),
      ],
      initialBinding: AppBindings(),
      initialRoute: AppStrings.splashRoute,
    );
  }
}
