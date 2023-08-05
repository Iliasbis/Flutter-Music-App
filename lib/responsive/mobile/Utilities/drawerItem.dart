import 'package:flutter/material.dart';
import 'package:music_responsive_app/Utilities/dimensions.dart';
import 'package:music_responsive_app/responsive/mobile/Utilities/smallText.dart';

import 'bigText.dart';

class drawerItem extends StatelessWidget {
  final Color? color;
  final String text;
  final FontWeight font;
  final double size;
  final IconData icon;
  const drawerItem(
      {super.key,
      this.color,
      required this.text,
      required this.icon,
      this.font = FontWeight.w600,
      this.size = 20});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: dimensions.width110,
          height: dimensions.height50,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(
                dimensions.radius20,
              ),
              bottomRight: Radius.circular(
                dimensions.radius20,
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(icon),
              SizedBox(
                width: dimensions.width5,
              )
            ],
          ),
        ),
        SizedBox(
          width: dimensions.width10,
        ),
        smallText(
          text: text,
          font: font,
          size: size,
          color: Colors.grey,
        )
      ],
    );
  }
}
