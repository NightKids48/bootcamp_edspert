import 'package:get/get.dart';
import '../../../data/core/dio_client.dart';
import '../../../data/repository/search_repository.dart';
import '../controllers/searchbook_controller.dart';

class SearchbookBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DioClient>(() => DioClientImpl());
    Get.lazyPut<SearchRepo>(() => SearchRepo(Get.find<DioClient>()));
    Get.lazyPut(
      () => SearchbookController(Get.find<SearchRepo>()),
    );
  }
}
