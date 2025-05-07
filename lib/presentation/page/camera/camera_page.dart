import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:flutter_mediapipe/flutter_mediapipe.dart';
import 'package:flutter_mediapipe/gen/landmark.pb.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({super.key});

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mediapipe'),
      ),
      body: NativeView(
        onViewCreated: (FlutterMediapipe c) => setState(
          () {
            c.landMarksStream.listen(_onLandMarkStream);
            c.platformVersion.then((content) => log(content));
          },
        ),
      ),
    );
  }

  void _onLandMarkStream(NormalizedLandmarkList landmarkList) {
    landmarkList.landmark.asMap().forEach(
      (int i, NormalizedLandmark value) {
        log('Index: $i \n' '$value');
      },
    );
  }
}
