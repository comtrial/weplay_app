import 'package:get/get.dart';
import 'package:weplay_app/binding/app_controller.dart';

class InitBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(AppController());
  }
}
