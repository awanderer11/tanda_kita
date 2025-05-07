import 'package:get/get.dart';
import 'package:tanda_kita/presentation/route/app_routes.dart';

class SplashController extends GetxController {
  initial() async {
    await Future.delayed(const Duration(milliseconds: 5000));
    Get.offAllNamed(AppRoutes.auth);
  }

  @override
  void onInit() {
    initial();
    super.onInit();
  }
}
