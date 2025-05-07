import 'package:flutter/material.dart';
import 'package:tanda_kita/presentation/widget/user.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Name(), ImageProfile()],
              ),
              SizedBox(height: 16),
              // ElevatedButton(
              //     onPressed: () => Get.toNamed(AppRoutes.camera),
              //     child: const Text('Camera')),
            ],
          ),
        ),
      ),
    );
  }
}
