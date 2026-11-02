import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:shopino/feature/logIn/logIn.dart';
import 'package:shopino/feature/product/productScreen.dart';
import 'package:shopino/feature/welcome/welcomeScreen.dart';
import 'package:shopino/routues/routes.dart';

void main() {
  usePathUrlStrategy();
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
      initialRoute: Routes.welcome,
      routes: {
        Routes.product: (context) => Productscreen(),
        Routes.login: (context) => LogInScreen(),
      },
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
