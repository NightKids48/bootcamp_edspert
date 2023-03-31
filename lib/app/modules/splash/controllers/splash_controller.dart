import 'package:get/get.dart';

import '../../../routes/routes.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Future.delayed(
      const Duration(milliseconds: 2000),
    ).then(
      (value) => Get.offAllNamed(Routes.home),
    );
  }
}
