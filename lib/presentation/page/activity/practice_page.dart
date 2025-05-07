import 'package:flutter/material.dart';

class PracticePage extends StatelessWidget {
  const PracticePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Practice Page'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Welcome to the Practice Page!'),
      ),
    );
  }
}
