import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sizewidget extends StatelessWidget {
  final bool isSelected;
  final String label;
  final VoidCallback onTap;

  const Sizewidget({
    super.key,
    required this.isSelected,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Material(
        borderRadius: BorderRadius.circular(8),
        color: isSelected ? Colors.black : Colors.grey.shade200,
        child: InkWell(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            child: Text(
              label,
              style: GoogleFonts.exo2(
                color: isSelected ? Colors.white : Colors.black,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
