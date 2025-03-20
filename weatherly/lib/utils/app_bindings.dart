import 'package:get/instance_manager.dart';
import 'package:weatherly/controllers/home_controller.dart';
import 'package:weatherly/controllers/splash_controller.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController(), fenix: true);
    Get.lazyPut(() => HomeController(), fenix: true);

  }
}
