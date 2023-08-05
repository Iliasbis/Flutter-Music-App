import 'package:flutter/material.dart';
import 'package:music_responsive_app/Utilities/dimensions.dart';
import 'package:music_responsive_app/responsive/mobile/Utilities/smallText.dart';

class rapeurCard extends StatelessWidget {
  final String image;
  final String name;

  const rapeurCard({super.key, required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(left: dimensions.width10),
          child: Container(
            height: MediaQuery.of(context).size.width < 500
                ? dimensions.height180
                : dimensions.height100 * 2.6,
            width: MediaQuery.of(context).size.width < 500
                ? dimensions.width110 + dimensions.width20 * 2
                : dimensions.width20 * 4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(dimensions.radius15),
              color: Colors.teal,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(image),
              ),
            ),
          ),
        ),
        SizedBox(
          height: dimensions.height5,
        ),
        smallText(
          text: name,
          size: 16,
          color: Colors.grey.shade700,
        )
      ],
    );
  }
}
