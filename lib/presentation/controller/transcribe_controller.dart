import 'dart:developer';

import 'package:get/get.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';

class TranscribeController extends GetxController {
  final isTranscribing = false.obs;
  final text = ''.obs;
  final textResult = ''.obs;
  final listText = <String>[].obs;
  final SpeechToText _speechToText = SpeechToText();
  bool speechEnabled = false;
  String lastWords = '';

  void clearText() {
    lastWords = '';
    listText.clear();
  }

  void initSpeech() async {
    log('initSpeech');
    speechEnabled = await _speechToText.initialize();
  }

  void startListening() async {
    log('startListening');
    isTranscribing.value = true;
    await _speechToText.listen(
      onResult: onSpeechResult,
      listenFor: const Duration(seconds: 60),
      localeId: 'id_ID',
    );
  }

  void stopListening() async {
    log('onSpeechResult');
    isTranscribing.value = false;
    await _speechToText.stop();
    listText.add(lastWords);
  }

  void onSpeechResult(SpeechRecognitionResult result) {
    log(result.recognizedWords);
    lastWords = result.recognizedWords;
  }

  @override
  void onInit() {
    initSpeech();
    super.onInit();
  }
}
