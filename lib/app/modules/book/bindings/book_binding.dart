import 'package:get/get.dart';
import '../../../data/core/dio_client.dart';
import '../../../data/repository/book_repository.dart';
import '../controllers/book_controller.dart';

class BookBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DioClient>(() => DioClientImpl());
    Get.lazyPut<BookRepo>(() => BookRepo(Get.find<DioClient>()));
    Get.lazyPut(
      () => BookController(Get.find<BookRepo>()),
    );
  }
}
