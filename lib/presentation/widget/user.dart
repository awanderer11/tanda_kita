import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tanda_kita/presentation/controller/userprofile_controller.dart';
import 'package:tanda_kita/presentation/route/app_routes.dart';
import 'package:tanda_kita/presentation/utils/colors.dart';
import 'package:tanda_kita/presentation/utils/utils.dart';

class Name extends GetView<UserprofileController> {
  const Name({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hi, ",
                style: TextStyle(
                    color: ColorApp.black, fontWeight: FontWeight.w600)),
            const Text(
              "Akbar Seknun",
              style: TextStyle(
                color: primaryColor,
                fontWeight: FontWeight.w600,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class ImageProfile extends GetView<UserprofileController> {
  const ImageProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.toNamed(AppRoutes.profile),
      child: Obx(
        () {
          if (controller.mUser.value.picture != "" &&
              controller.mUser.value.picture != null) {
            return Container(
              width: 50,
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(
                  image: NetworkImage(
                    controller.mUser.value.picture.toString(),
                  ),
                ),
              ),
            );
          } else {
            return Container(
              width: 50,
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Text(
                  Utils().getInitial("Akbar Seknun"),
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: ColorApp.white),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
