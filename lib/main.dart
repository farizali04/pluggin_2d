import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:pluggin_2d/widget/takepicture_screen.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  final cameras = await availableCameras();
  final firstcamera = cameras.first;
  // final secondcamera = cameras.last;
  runApp(
    MaterialApp(
      theme: ThemeData.dark(),
      home: TakepictureScreen(camera: firstcamera),
      debugShowCheckedModeBanner: false,
    ),
  );
}