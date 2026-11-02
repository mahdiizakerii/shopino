import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Card1 extends StatelessWidget {
  final double screenWidth;
  final double scrreenHeight;

  const Card1({
    super.key,
    required this.screenWidth,
    required this.scrreenHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Colors.brown.shade700, Colors.brown.shade200],
          ),
        ),
        width: double.infinity,
        height: scrreenHeight * 0.35,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              bottom: 0,
              child: Image.asset("assets/images/pic1.png"),
              height: scrreenHeight * 0.22,
              width: screenWidth * 0.50,
            ),
            Positioned(
              top: 10,
              right: 24,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "all kids fashion",
                    style: GoogleFonts.exo2(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.50,
                    child: Text(
                      "designed to spark joy creativity in every child, with a focus on comfort quality.",
                      style: GoogleFonts.exo2(fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
