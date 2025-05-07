import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class Utils {
  Uint8List blobToImageMemory(String source) {
    return base64Decode(source);
  }

  String formatHHmm(String date) {
    final res = DateTime.parse(date);
    return DateFormat("HH:mm").format(res);
  }

  String getInitial(String text) {
    return (text.isEmpty)
        ? 'P'
        : text.trim().split(' ').map((l) => l[0]).take(2).join().toUpperCase();
  }

  String status(int code) {
    switch (code) {
      case 200:
        return "success";
      case 503:
        return "pending";
    }
    return "pending";
  }
}
