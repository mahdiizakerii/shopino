import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopino/feature/welcome/welcomeScreen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.dark,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'shopino',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        pageTransitionsTheme: PageTransitionsTheme(
          builders: {
            // TargetPlatform.android: FadeUpwardsPageTransitionsBuilder()
            for (var platform in TargetPlatform.values)
              platform: FadeForwardsPageTransitionsBuilder(),
          },
        ),
      ),
      home: Welcomescreen(),
    );
  }
}
