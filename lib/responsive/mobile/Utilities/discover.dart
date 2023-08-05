import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_responsive_app/Utilities/dimensions.dart';

class discover extends StatelessWidget {
  const discover({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Padding(
          padding: EdgeInsets.only(left: dimensions.width5),
          child: Text(
            "Discover",
            style: GoogleFonts.poppins(
              fontSize: dimensions.size20,
              color: Colors.grey.shade800,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: dimensions.width13),
          child: Text(
            "Popular",
            style: GoogleFonts.poppins(
                fontSize: dimensions.size20, color: Colors.grey),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: dimensions.width13),
          child: Text(
            "Latest",
            style: GoogleFonts.poppins(
                fontSize: dimensions.size20, color: Colors.grey),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: dimensions.width13),
          child: Text(
            "Trending",
            style: GoogleFonts.poppins(
                fontSize: dimensions.size20, color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
