import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:wecan_task/controller/networking/dio_networking.dart';
import '../../model/dream.dart';

class SpecialDreamsController extends GetxController {
  final PagingController<int, Dream> pagingController =
      PagingController(firstPageKey: 1);
  final DioNetworking _dioNetworking = DioNetworking();

  @override
  void onInit() {
    pagingController.addPageRequestListener((pageKey) {
      getDreams(pageKey);
    });
    super.onInit();
  }

  Future<void> getDreams(int pageKey) async {
    try {
      final newDreams = await _dioNetworking.getDreams(id: pageKey.toString());
      if (newDreams.isEmpty) {
        pagingController.appendLastPage(newDreams);
      } else {
        pagingController.appendPage(newDreams, pageKey + 1);
      }
    } catch (e) {
      pagingController.error = e;
    }
  }

  @override
  void onClose() {
    pagingController.dispose();
    super.onClose();
  }
}
