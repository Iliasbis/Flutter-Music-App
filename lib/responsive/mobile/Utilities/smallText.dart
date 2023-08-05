import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_responsive_app/Utilities/dimensions.dart';

class smallText extends StatelessWidget {
  final String text;
  final Color color;
  final FontWeight font;
  double size;
  smallText(
      {required this.text,
      this.color = Colors.grey,
      this.font = FontWeight.normal,
      this.size = 14,
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
