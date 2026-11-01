import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RatingDilaog extends StatefulWidget {
  final double rating;
  const RatingDilaog({super.key, required this.rating});

  @override
  State<RatingDilaog> createState() => _RatingDilaogState();
}

class _RatingDilaogState extends State<RatingDilaog> {
  int selectedRating = 0;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Rate Us', textAlign: TextAlign.center),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(widget.rating.toString(), style: GoogleFonts.exo2(fontSize: 28)),
          SizedBox(height: 8),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(5, (index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedRating = index + 1;
                  });
                },
                child: Icon(
                  selectedRating == 0
                      ? (index < widget.rating.floor()
                            ? Icons.star
                            : index < widget.rating
                            ? Icons.star_half
                            : Icons.star_border)
                      : (index < selectedRating
                            ? Icons.star
                            : Icons.star_border),
                  color: Colors.amber,
                  size: 30,
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
