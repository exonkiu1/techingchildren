import 'package:get/get.dart';
import 'package:techingchildren/Getx/controller.dart';
import 'package:techingchildren/pages/spelling/Controllerspelng.dart';

class mybinding implements Bindings {
  @override
  void dependencies() {
    Get.put(controller(), permanent: true);
    Get.put(Controllerspelng(), permanent: true);
    // TODO: implement dependencies
  }
}
