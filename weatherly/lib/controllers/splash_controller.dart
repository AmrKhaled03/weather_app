import 'package:get/get.dart';
import 'package:weatherly/constants/app_strings.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    addRoutes();
    super.onInit();
  }

  void addRoutes() {
    Future.delayed(Duration(seconds: 4), () {
      Get.offAllNamed(AppStrings.onboardingRoute);
    });
  }
}
