import 'package:dio/dio.dart';
import 'package:wecan_task/model/dream.dart';
import 'package:wecan_task/model/dream_details.dart';

class DioNetworking {
  final Dio _dio = Dio(BaseOptions(connectTimeout: 240*100));
  final _baseUrl = 'https://ta2weel.com/public/api/v1/';

  Future<List<Dream>> getDreams({required String id}) async {
    List<Dream> dreams = [];
    try {
      Response response = await _dio.get('${_baseUrl}recent-dreams?page=$id');
      //print('dream Info: ${response.data['data']}');
      for (var item in response.data['data']) {
        Dream dream = Dream.fromJson(item);
        dreams.add(dream);
      }
    } on DioError catch (e) {
      if (e.response != null) {
        // print('Dio error!');
        // print('STATUS: ${e.response?.statusCode}');
        // print('DATA: ${e.response?.data}');
        // print('HEADERS: ${e.response?.headers}');
      } else {
        // print('Error sending request!');
        // print(e.message);
      }
    }
    return dreams;
  }

  Future<DreamDetails?> getDreamDetails({required String id}) async {
    DreamDetails? dreamDetails;
    try {
      Response response = await _dio.get('${_baseUrl}dream/$id');
      //print('dream details: ${response.data['data']}');
      dreamDetails = DreamDetails.fromJson(response.data['data']);
    } on DioError catch (e) {
      if (e.response != null) {
        // print('Dio error!');
        // print('STATUS: ${e.response?.statusCode}');
        // print('DATA: ${e.response?.data}');
        // print('HEADERS: ${e.response?.headers}');
      } else {
        // print('Error sending request!');
        // print(e.message);
      }
    }
    return dreamDetails;
  }
}
