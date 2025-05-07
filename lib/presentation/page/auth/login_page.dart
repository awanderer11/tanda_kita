import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tanda_kita/presentation/controller/auth/auth_controller.dart';
import 'package:tanda_kita/presentation/page/auth/daftar_page.dart';
import 'package:tanda_kita/presentation/route/app_routes.dart';
import 'package:tanda_kita/presentation/utils/colors.dart';
import 'package:tanda_kita/presentation/utils/constant.dart';

class LoginPage extends GetView<AuthController> {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.2),
            borderRadius: BorderRadius.circular(radius),
          ),
          padding: const EdgeInsets.all(32),
          margin: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Center(
                  child: TextLogin(
                      text: "Tanda Kita",
                      size: 30,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 50),
                const TextLogin(text: 'User Name'),
                TextFormField(
                  style: TextStyle(color: ColorApp.black),
                  cursorColor: primaryColor,
                  controller: TextEditingController(),
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person_2_outlined,
                      color: ColorApp.black,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const TextLogin(text: 'Password'),
                Obx(
                  () => TextFormField(
                    style: TextStyle(color: ColorApp.black),
                    cursorColor: primaryColor,
                    obscureText: !controller.isVisible.value,
                    controller: controller.passwordController,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock_outlined,
                        color: ColorApp.black,
                      ),
                      suffixIcon: IconButton(
                        onPressed: () => controller.visible(),
                        icon: Icon(
                          controller.isVisible.value == false
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                          color: ColorApp.black,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 32),
                Row(
                  children: [
                    Obx(
                      () => SizedBox(
                        width: 16,
                        height: 8,
                        child: Checkbox(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6)),
                          activeColor: ColorApp.white,
                          checkColor: primaryColor,
                          value: controller.isRemember.value,
                          onChanged: (value) => controller.removeRemember(),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    const TextLogin(text: "Remember me"),
                  ],
                ),
                const SizedBox(height: 32),
                Obx(
                  () => SizedBox(
                    width: Get.width,
                    child: ElevatedButton(
                      onPressed: () => Get.offAllNamed(AppRoutes.index),
                      child: controller.isLoading.isTrue
                          ? const SizedBox(
                              height: 16,
                              width: 16,
                              child: CircularProgressIndicator(
                                color: primaryColor,
                              ),
                            )
                          : const Text("Sign In"),
                    ),
                  ),
                ),
                const SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const TextLogin(text: "Don't have an account?"),
                    TextButton(
                      onPressed: () {
                        Get.to(() => const DaftarPage());
                      },
                      child: const TextLogin(
                        text: "Sign Up",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TextLogin extends StatelessWidget {
  final String text;
  final double? size;
  final FontWeight? fontWeight;
  const TextLogin({
    super.key,
    required this.text,
    this.size,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: primaryColor,
        fontSize: size,
        fontWeight: fontWeight,
      ),
    );
  }
}
