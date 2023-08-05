import 'package:flutter/material.dart';
import 'package:music_responsive_app/Utilities/dimensions.dart';
import 'package:music_responsive_app/responsive/mobile/Utilities/bigText.dart';
import 'package:music_responsive_app/responsive/mobile/Utilities/smallText.dart';

class profileCircle extends StatelessWidget {
  final String image;
  final String name;

  const profileCircle({super.key, required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: dimensions.width10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(image),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              bigText(
                text: name,
                color: Colors.grey.shade600,
              ),
            ],
          )
        ],
      ),
    );
  }
}
