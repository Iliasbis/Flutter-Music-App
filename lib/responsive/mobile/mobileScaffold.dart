// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

import 'package:flutter/material.dart';
import 'package:music_responsive_app/Utilities/dimensions.dart';
import 'package:music_responsive_app/responsive/mobile/Utilities/RapeurCard.dart';
import 'package:music_responsive_app/responsive/mobile/Utilities/bigText.dart';
import 'package:music_responsive_app/responsive/mobile/Utilities/discover.dart';
import 'package:music_responsive_app/responsive/mobile/Utilities/drawerItem.dart';
import 'package:music_responsive_app/responsive/mobile/Utilities/musicBar.dart';
import 'package:music_responsive_app/responsive/mobile/Utilities/profileCircle.dart';
import 'package:music_responsive_app/responsive/mobile/Utilities/recentlyPlayed.dart';
import 'package:music_responsive_app/responsive/mobile/Utilities/smallText.dart';
import 'package:music_responsive_app/responsive/reusebale.dart';

class mobileScaffold extends StatefulWidget {
  const mobileScaffold({super.key});

  @override
  State<mobileScaffold> createState() => _mobileScaffoldState();
}

final List image = [
  "lib/image/1.png",
  "lib/image/2.png",
  "lib/image/3.png",
  "lib/image/4.png",
  "lib/image/5.png",
  "lib/image/6.png",
  "lib/image/7.png",
  "lib/image/8.png",
  "lib/image/9.png",
  "lib/image/10.png",
  "lib/image/11.png",
  "lib/image/12.png",
];
final List<String> name = [
  "Eminem",
  "Travis ",
  "Selena ",
  "3antiiz",
  "Camila ",
  "Billie ",
  "Billie ",
  "3antiiz",
  "Zayne ",
  "The weekend",
  "The weekend",
  "The weekend",
];

// ignore: camel_case_types
class _mobileScaffoldState extends State<mobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(dimensions.size5),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    style: BorderStyle.solid,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(dimensions.radius13),
                ),
                height: dimensions.height50,
                width: 200,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search songs here",
                    prefixIcon: Icon(Icons.search_outlined),
                  ),
                ),
              ),
            ],
          ),
        ),
        elevation: 0,
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey.shade300,
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 80,
                        backgroundImage: AssetImage(
                          image[0],
                        ),
                      ),
                      SizedBox(
                        height: dimensions.height10,
                      ),
                      smallText(
                        text: "Hello Dear ILias",
                        color: Colors.grey,
                      )
                    ],
                  ),
                  SizedBox(
                    height: dimensions.height20,
                  ),
                  drawerItem(
                    text: 'Home',
                    icon: Icons.home_outlined,
                    color: Colors.cyanAccent,
                  ),
                  drawerItem(
                    text: 'Account',
                    icon: Icons.person_outline,
                  ),
                  drawerItem(
                    text: 'Activity',
                    icon: Icons.local_activity_outlined,
                  ),
                  drawerItem(
                    text: 'Prodcasts',
                    icon: Icons.local_attraction_outlined,
                  ),
                  drawerItem(
                    text: 'Theme',
                    icon: Icons.wb_sunny_outlined,
                  ),
                  drawerItem(
                    text: 'Settings',
                    icon: Icons.settings_outlined,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: dimensions.height50 + dimensions.height10,
                    width: dimensions.width200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(dimensions.radius20),
                      border: Border.all(
                        color: Colors.white,
                        width: 3,
                        style: BorderStyle.solid,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.logout_outlined),
                        bigText(
                          text: "Logout",
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: dimensions.width10),
          child: Column(
            children: [
              SizedBox(
                height: dimensions.height5,
              ),
              SizedBox(
                height: dimensions.height50 - dimensions.height20,
                width: dimensions.screenWidth,
                child: discover(),
              ),
              SizedBox(
                height: dimensions.height10,
              ),
              Row(
                children: [bigText(text: "Popular Artiste")],
              ),
              SizedBox(
                height: dimensions.height100,
                width: dimensions.screenWidth,
                child: ListView.builder(
                  itemCount: image.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return profileCircle(
                      image: image[index],
                      name: name[index],
                    );
                  },
                ),
              ),
              Row(
                children: [bigText(text: "Tredy Songs")],
              ),
              SizedBox(
                height: dimensions.height120 * 2,
                width: dimensions.screenWidth,
                child: ListView.builder(
                  itemCount: image.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return rapeurCard(image: image[index], name: name[index]);
                  },
                ),
              ),
              Row(
                children: [
                  bigText(text: "Recently Played"),
                ],
              ),
              Row(
                children: [
                  recentlyPlayed(
                    image: image[0],
                  ),
                ],
              ),
              SizedBox(
                height: dimensions.height10,
              ),
              musicBar(
                image: image[5],
                artisteName: name[0],
                musicName: "Pilow",
              ),
              musicBar(
                image: image[1],
                artisteName: name[0],
                musicName: "Qlf",
              ),
              musicBar(
                image: image[2],
                artisteName: name[0],
                musicName: "Amour",
              ),
              musicBar(
                image: image[3],
                artisteName: name[0],
                musicName: "Labass",
              ),
              musicBar(
                image: image[4],
                artisteName: name[0],
                musicName: "Intro",
              ),
              musicBar(
                image: image[0],
                artisteName: name[0],
                musicName: "Stan",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
