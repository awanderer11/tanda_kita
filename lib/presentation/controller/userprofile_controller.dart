import 'package:get/get.dart';
import 'package:tanda_kita/data/user_model.dart';

class UserprofileController extends GetxController {
  final Rx<UserModel> mUser = UserModel().obs;
}
