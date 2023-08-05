// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:music_responsive_app/Utilities/dimensions.dart';
import 'package:music_responsive_app/responsive/mobile/Utilities/bar.dart';
import 'package:music_responsive_app/responsive/mobile/Utilities/bigText.dart';
import 'package:music_responsive_app/responsive/mobile/Utilities/smallText.dart';

class musicBarTablet extends StatelessWidget {
  final String image;
  final String artisteName;
  final Color color;
  final String musicName;
  const musicBarTablet(
      {super.key,
      this.color = Colors.blue,
      required this.image,
      required this.artisteName,
      required this.musicName});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: dimensions.height20 * 4,
      child: Container(
        height: dimensions.height100 - dimensions.height20,
        width: dimensions.width10,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(dimensions.radius15),
          color: Colors.grey.shade300,
          border: Border.all(
            color: Colors.white,
            style: BorderStyle.solid,
            width: 3,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                  width: dimensions.width5,
                ),
                CircleAvatar(
                  radius: dimensions.size15 * 2,
                  backgroundImage: AssetImage(
                    image,
                  ),
                ),
                SizedBox(
                  width: dimensions.width7,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    smallText(
                      text: artisteName,
                      font: FontWeight.w600,
                      size: dimensions.size15,
                      color: Colors.black,
                    ),
                    smallText(text: musicName)
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  child: Row(
                    children: [
                      bar(height: 5, color: color),
                      bar(height: 8, color: color),
                      bar(height: 12, color: color),
                      bar(height: 16, color: color),
                      bar(height: 10, color: color),
                      bar(height: 13, color: Colors.grey),
                      bar(height: 15, color: Colors.grey),
                      bar(height: 11, color: Colors.grey),
                      bar(height: 7, color: Colors.grey),
                      bar(height: 10, color: Colors.grey),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  backgroundColor: Colors.grey.withOpacity(0.8),
                  radius: dimensions.height20,
                  child: Icon(
                    Icons.play_arrow_outlined,
                    color: Colors.white,
                    size: dimensions.height20 * 1.6,
                  ),
                ),
                SizedBox(
                  width: dimensions.width5,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
