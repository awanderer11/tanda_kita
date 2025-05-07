import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tanda_kita/presentation/controller/transcribe_controller.dart';
import 'package:tanda_kita/presentation/widget/message_tile.dart';
import 'package:tanda_kita/presentation/widget/record_button.dart';

class TranscribePage extends GetView<TranscribeController> {
  const TranscribePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transcribe'),
        centerTitle: true,
      ),
      body: Obx(
        () {
          if (controller.listText.isEmpty) {
            return const Center(
              child: Text(
                'Klik tombol rekam untuk mulai merekam',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            );
          }
          return ListView.builder(
            itemCount: controller.listText.length,
            itemBuilder: (context, index) {
              return MessageTile(
                  message: controller.listText[index], sendByMe: true);
            },
          );
        },
      ),
      persistentFooterButtons: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () => controller.clearText(),
              child: const DeleteButton(),
            ),
            Obx(
              () => GestureDetector(
                onTap: () => controller.isTranscribing.value == false
                    ? controller.startListening()
                    : controller.stopListening(),
                child: RecordButton(
                  isRecording: controller.isTranscribing.value,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
