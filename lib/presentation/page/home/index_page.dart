import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tanda_kita/presentation/controller/home_controller.dart';
import 'package:tanda_kita/presentation/utils/colors.dart';

class IndexPage extends GetView<HomeController> {
  const IndexPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () =>
            controller.widgetOptions.elementAt(controller.selectedIndex.value),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          backgroundColor: backGroundColor,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.record_voice_over), label: 'Transcribe'),
            BottomNavigationBarItem(
                icon: Icon(Icons.menu_book), label: 'Practice'),
          ],
          selectedItemColor: primaryColor,
          currentIndex: controller.selectedIndex.value,
          onTap: (index) {
            controller.onItemTapped(index);
          },
        ),
      ),
    );
  }
}
