import 'package:get/get.dart';
import 'package:wecan_task/controller/controllers/special_dreams_controller.dart';

class SpecialDreamsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SpecialDreamsController());
  }
}
