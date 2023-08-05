// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:music_responsive_app/Utilities/dimensions.dart';
import 'package:music_responsive_app/responsive/Tablet/musicVisualization.dart';
import 'package:music_responsive_app/responsive/mobile/Utilities/smallText.dart';

class barMusicTab extends StatelessWidget {
  final String image;
  final String artisteName;
  final String description;
  final Color color;
  const barMusicTab({super.key, required this.color, required this.image, required this.artisteName, required this.description});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(
                image,
              ),
            ),
            SizedBox(
              width: dimensions.width5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: color,
                      radius: 5,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    smallText(
                      text:  artisteName,
                      color: Colors.black,
                      font: FontWeight.w500,
                    ),
                  ],
                ),
                smallText(text: description)
              ],
            ),
          ],
        ),
        musicVisual(
          color: color,
        )
      ],
    );
  }
}
