import 'package:get/get.dart';
import 'package:gojek_clone_ui/presentation/controllers/home_controller.dart';

class MainBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
