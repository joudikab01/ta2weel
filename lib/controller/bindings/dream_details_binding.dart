import 'package:get/get.dart';
import 'package:wecan_task/controller/controllers/dream_details_controller.dart';

class DreamDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(DreamDetailsController());
  }
}
