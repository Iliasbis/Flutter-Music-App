// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:music_responsive_app/responsive/mobile/Utilities/bar.dart';
import 'package:music_responsive_app/responsive/mobile/Utilities/smallText.dart';
import 'package:music_visualizer/music_visualizer.dart';
import 'package:music_responsive_app/Utilities/dimensions.dart';

import 'bigText.dart';

class musicBar extends StatelessWidget {
  final String artisteName;
  final String musicName;
  final String image;
  musicBar(
      {required this.image,
      super.key,
      required this.artisteName,
      required this.musicName});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: dimensions.height20 * 4,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 4),
        child: Builder(builder: (context) {
          return Container(
            height: dimensions.height100 - dimensions.height20,
            width: dimensions.screenWidth,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(dimensions.radius15),
              color: Colors.grey.shade300,
              border: Border.all(
                color: Colors.white,
                style: BorderStyle.solid,
                width: 5,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: dimensions.size15 * 2,
                      backgroundImage: AssetImage(
                        image,
                      ),
                    ),
                    SizedBox(
                      width: dimensions.width10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        smallText(text: artisteName),
                        bigText(text: musicName)
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          bar(height: 5, color: Colors.blue),
                          bar(height: 8, color: Colors.blue),
                          bar(height: 12, color: Colors.blue),
                          bar(height: 16, color: Colors.blue),
                          bar(height: 10, color: Colors.blue),
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
                    Padding(
                      padding: EdgeInsets.only(right: dimensions.width10),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey.withOpacity(0.8),
                        radius: dimensions.height10 * 2,
                        child: Icon(
                          Icons.play_arrow_outlined,
                          color: Colors.white,
                          size: dimensions.height10 * 2.7,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
