import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tanda_kita/presentation/page/auth/login_page.dart';
import 'package:tanda_kita/presentation/route/app_routes.dart';
import 'package:tanda_kita/presentation/widget/dialog_widget.dart';
import 'package:tanda_kita/presentation/widget/general_componenet.dart';
import 'package:tanda_kita/presentation/widget/text_widget.dart';
import 'package:tanda_kita/presentation/widget/user.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ImageProfile(),
                    SizedBox(width: 8),
                    TextLogin(
                      text: "Akbar Seknun",
                      size: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
                Text(
                  "Ubah foto",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.red,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.email),
                    SizedBox(width: 8),
                    TextWidget(title: "akbarseknun@gmail.com"),
                  ],
                ),
                TextWidget(title: ""),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.language),
                    SizedBox(width: 8),
                    TextWidget(title: "Ubah bahasa"),
                  ],
                ),
                TextWidget(
                  title: "Bahasa Indonesia",
                  color: Colors.red,
                ),
              ],
            ),
            Spacer(),
            LogoutComponent()
          ],
        ),
      ),
    );
  }
}

class LogoutComponent extends StatelessWidget {
  const LogoutComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.white),
      child: Column(
        children: [
          GeneralComponent(
            isTrailing: true,
            onTap: () => Get.dialog(
              AlertDialogWidget(
                title: "Logout",
                msg: "Apakah Anda yakin ingin Logout?",
                onPressed: () => Get.offAllNamed(AppRoutes.auth),
              ),
            ),
            leading: "Logout",
            title: "",
            divider: false,
            colors: Colors.red,
            icon: Icons.logout_outlined,
          ),
        ],
      ),
    );
  }
}
