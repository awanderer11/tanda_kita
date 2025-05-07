import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final isVisible = false.obs;
  final isLoading = false.obs;
  final isError = false.obs;
  final isRemember = false.obs;
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void visible() {
    isVisible.value = !isVisible.value;
  }

  @override
  void onClose() {
    usernameController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  removeRemember() {
    isRemember.value = !isRemember.value;
  }
}
