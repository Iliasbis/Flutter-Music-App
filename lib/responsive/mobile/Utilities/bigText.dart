import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_responsive_app/Utilities/dimensions.dart';

class bigText extends StatelessWidget {
  final String text;
  final Color color;
  final FontWeight font;
  double size;
  bigText(
      {required this.text,
      this.color = Colors.black,
      this.font = FontWeight.w600,
      this.size = 20,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        fontSize: size,
        fontWeight: font,
        color: color,
      ),
    );
  }
}
