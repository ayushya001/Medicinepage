import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medicalpage/pages/fileOpening.dart';
import 'package:medicalpage/pages/medicine3.dart';

import 'pages/congratspage.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
    statusBarColor: Colors.white,
    statusBarIconBrightness: Brightness.dark,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/" : (_)=> FileUploadScreen()

      },

    );

  }
}

