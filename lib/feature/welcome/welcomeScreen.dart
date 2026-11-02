import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopino/feature/logIn/logIn.dart';
import 'package:shopino/feature/product/productScreen.dart';
import 'package:shopino/feature/welcome/widget/card1.dart';
import 'package:shopino/feature/welcome/widget/card2.dart';
import 'package:shopino/feature/welcome/widget/card3.dart';
import 'package:shopino/routues/routes.dart';

class Welcomescreen extends StatelessWidget {
  const Welcomescreen({super.key});
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: screenHeight,
          child: Stack(
            children: [
              BackWidget(screenWidth: screenWidth, scrreenHeight: screenHeight),
              FrontWidget(screenWidth: screenWidth),
            ],
          ),
        ),
      ),
    );
  }
}

class FrontWidget extends StatelessWidget {
  const new({super.key, required this.screenWidth});

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      left: 0,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            stops: [0.40, 1.0],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Theme.of(context).colorScheme.surface,
              Theme.of(context).colorScheme.surface.withValues(alpha: 0),
            ],
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                textAlign: TextAlign.center,
                "get ready to dreas your little ones in fashion forward outfits",
                style: GoogleFonts.exo2(
                  fontSize: 28,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              height: screenWidth * 0.150,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 26),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.product);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(12),
                    ),
                  ),
                  child: Text(
                    'get started',
                    style: GoogleFonts.exo2(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already Have Account?',
                  style: GoogleFonts.exo2(fontSize: 16, color: Colors.black87),
                ),
                SizedBox(width: 8),
                TextButton(
                  style: ButtonStyle(
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  onPressed: () => Navigator.pushNamed(context, Routes.login),
                  child: Text(
                    'LogIn',
                    style: GoogleFonts.exo2(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 30),
            ),
          ],
        ),
      ),
    );
  }
}

class BackWidget extends StatelessWidget {
  final double screenWidth;
  final double scrreenHeight;
  const BackWidget({
    super.key,
    required this.screenWidth,
    required this.scrreenHeight,
  });

  @override
  Widget build(Object context) {
    return SizedBox(
      height: scrreenHeight * 8,
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card1(screenWidth: screenWidth, scrreenHeight: scrreenHeight),
              Card2(screenWidth: screenWidth),
            ],
          ),
          Positioned(
            right: 0,
            bottom: 90,
            child: Card3(screenWidth: screenWidth, screenHeight: screenWidth),
          ),
        ],
      ),
    );
  }
}
