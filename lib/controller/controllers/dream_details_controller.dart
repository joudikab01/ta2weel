import 'package:get/get.dart';
import 'package:wecan_task/controller/networking/dio_networking.dart';
import 'package:wecan_task/model/dream_details.dart';

class DreamDetailsController extends GetxController {
  final DioNetworking _dioNetworking = DioNetworking();
  DreamDetails? dreamDetails;
  Future<DreamDetails?> getDreamDetails(String id) async {
    dreamDetails = await _dioNetworking.getDreamDetails(id: id);
    return dreamDetails;
  }
}
