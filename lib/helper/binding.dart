import 'package:get/get.dart';
import 'package:management/viewmodel/getxController.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DataControl());
  }
}
