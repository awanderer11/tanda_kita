import 'package:flutter/material.dart';
import 'package:tanda_kita/presentation/utils/colors.dart';

class RecordButton extends StatelessWidget {
  final bool isRecording;
  const RecordButton({super.key, this.isRecording = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
                width: 4, color: !isRecording ? primaryColor : Colors.red),
          ),
          child: Container(
            margin: const EdgeInsets.all(8),
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: !isRecording ? primaryColor : Colors.red,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Center(
              child: Icon(
                !isRecording ? Icons.mic : Icons.stop,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          !isRecording ? 'Rekam' : 'Stop',
          style: const TextStyle(
            color: primaryColor,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

class DeleteButton extends StatelessWidget {
  const DeleteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Icon(
            Icons.delete,
            color: Colors.black,
            size: 30,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Hapus',
          style: TextStyle(
            color: primaryColor,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
