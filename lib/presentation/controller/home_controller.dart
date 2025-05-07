import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tanda_kita/presentation/page/activity/practice_page.dart';
import 'package:tanda_kita/presentation/page/activity/transcribe_page.dart';
import 'package:tanda_kita/presentation/page/home/home_page.dart';

class HomeController extends GetxController {
  final selectedIndex = 0.obs;
  List<Widget> widgetOptions = <Widget>[
    const HomePage(),
    const TranscribePage(),
    const PracticePage()
  ];

  void onItemTapped(int index) {
    selectedIndex.value = index;
  }
}
