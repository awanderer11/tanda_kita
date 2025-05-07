import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tanda_kita/presentation/utils/colors.dart';
import 'package:tanda_kita/presentation/utils/constant.dart';
import 'package:tanda_kita/presentation/widget/text_widget.dart';

class DialogWidget extends StatelessWidget {
  final String title;
  final bool invalidToken;
  const DialogWidget(
      {super.key, required this.title, required this.invalidToken});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: Center(
        child: Container(
          height: Get.width / 1.8,
          width: Get.width / 1.8,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Text(
                "Oops",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 15),
              Text(title,
                  style: const TextStyle(fontSize: 14),
                  textAlign: TextAlign.center),
              const SizedBox(height: 22),
              Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  onPressed: () async {
                    if (invalidToken) {
                    } else {
                      Navigator.of(context).pop();
                    }
                  },
                  child: Text(
                    invalidToken == true ? "Sign in" : "Back",
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AlertDialogWidget extends StatelessWidget {
  final String? title;
  final String? msg;
  final Function() onPressed;
  const AlertDialogWidget({
    super.key,
    required this.title,
    required this.msg,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(radius))),
      backgroundColor: backGroundColor,
      contentTextStyle: const TextStyle(color: Colors.black),
      titleTextStyle: const TextStyle(color: Colors.black),
      title: TextWidget(title: title ?? 'Oops'),
      content: TextWidget(title: msg ?? 'Something went wrong!'),
      actions: [
        OutlinedButton(
          onPressed: () => Get.back(),
          style: OutlinedButton.styleFrom(
              side: const BorderSide(color: primaryColor)),
          child: const TextWidget(title: "No", color: primaryColor),
        ),
        OutlinedButton(
          onPressed: onPressed,
          style: OutlinedButton.styleFrom(
              backgroundColor: primaryColor,
              side: const BorderSide(color: primaryColor)),
          child: TextWidget(title: "Yes", color: ColorApp.white),
        ),
      ],
    );
  }
}
