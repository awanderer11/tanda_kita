import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tanda_kita/presentation/controller/auth/daftar_controller.dart';
import 'package:tanda_kita/presentation/page/auth/login_page.dart';
import 'package:tanda_kita/presentation/utils/colors.dart';

class DaftarPage extends GetView<DaftarController> {
  const DaftarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Center(
              child: TextLogin(
                  text: "Tanda Kita", size: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const SizedBox(height: 16),
            const TextLogin(text: 'User Name'),
            TextFormField(
              style: TextStyle(color: ColorApp.black),
              cursorColor: primaryColor,
              controller: controller.username,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.person_2_outlined,
                  color: ColorApp.black,
                ),
              ),
            ),
            const SizedBox(height: 16),
            const TextLogin(text: 'Email'),
            TextFormField(
              style: TextStyle(color: ColorApp.black),
              cursorColor: primaryColor,
              controller: controller.emailController,
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
                obscureText: !controller.isPasswordVisible.value,
                controller: controller.passwordController,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock_outlined,
                    color: ColorApp.black,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () => controller.togglePasswordVisibility(),
                    icon: Icon(
                      controller.isPasswordVisible.value == false
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                      color: ColorApp.black,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            const TextLogin(text: 'Confirm Password'),
            Obx(
              () => TextFormField(
                style: TextStyle(color: ColorApp.black),
                cursorColor: primaryColor,
                obscureText: !controller.isConfirmPasswordVisible.value,
                controller: controller.passwordController,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock_outlined,
                    color: ColorApp.black,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () =>
                        controller.toggleConfirmPasswordVisibility(),
                    icon: Icon(
                      controller.isConfirmPasswordVisible.value == false
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                      color: ColorApp.black,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Obx(
              () => SizedBox(
                width: Get.width,
                child: ElevatedButton(
                  onPressed: () {},
                  child: controller.isLoading.isTrue
                      ? const SizedBox(
                          height: 16,
                          width: 16,
                          child: CircularProgressIndicator(
                            color: primaryColor,
                          ),
                        )
                      : const Text("Sign Up"),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const TextLogin(text: "Already have an account?"),
                TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: const TextLogin(text: "Sign In"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
