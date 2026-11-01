import 'package:flutter/material.dart';

class Card3 extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  const Card3({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Container(
        width: screenWidth * 0.499,
        height: screenHeight * 0.7,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(40),
          ),
          border: Border.all(
            color: Theme.of(context).colorScheme.surface,
            width: 7,
          ),
          image: DecorationImage(
            image: AssetImage('assets/images/pic3.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
