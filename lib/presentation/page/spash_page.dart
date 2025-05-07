import 'package:flutter/material.dart';
import 'package:tanda_kita/presentation/page/auth/login_page.dart';

class SpashPage extends StatelessWidget {
  const SpashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: TextLogin(
            text: 'Tanda Kita', size: 30, fontWeight: FontWeight.bold),
      ),
    );
  }
}
