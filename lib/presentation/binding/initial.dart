import 'package:get/get.dart';
import 'package:tanda_kita/presentation/controller/auth/auth_controller.dart';
import 'package:tanda_kita/presentation/controller/auth/daftar_controller.dart';
import 'package:tanda_kita/presentation/controller/home_controller.dart';
import 'package:tanda_kita/presentation/controller/spash_controller.dart';
import 'package:tanda_kita/presentation/controller/transcribe_controller.dart';
import 'package:tanda_kita/presentation/controller/userprofile_controller.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashController());
    Get.put(AuthController());
    Get.put(DaftarController());
    Get.put(HomeController());
    Get.put(TranscribeController());
    Get.put(UserprofileController());
  }
}
