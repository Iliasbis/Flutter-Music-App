import 'package:flutter/material.dart';
import 'package:music_responsive_app/Utilities/dimensions.dart';

class bar extends StatelessWidget {
  final double height;
  final Color color;
  const bar({super.key, required this.height, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 1.4),
      child: Container(
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            dimensions.radius15,
          ),
          color: color,
        ),
        width: 4,
      ),
    );
  }
}
