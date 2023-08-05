// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:music_responsive_app/Utilities/dimensions.dart';
import 'package:music_responsive_app/responsive/Tablet/barMusicTablet.dart';
import 'package:music_responsive_app/responsive/Tablet/musicBarTablet.dart';
import 'package:music_responsive_app/responsive/Tablet/musicVisualization.dart';
import 'package:music_responsive_app/responsive/Tablet/tablet_drawer.dart';
import 'package:music_responsive_app/responsive/mobile/Utilities/RapeurCard.dart';
import 'package:music_responsive_app/responsive/mobile/Utilities/musicBar.dart';
import 'package:music_responsive_app/responsive/mobile/Utilities/profileCircle.dart';
import 'package:music_responsive_app/responsive/mobile/Utilities/recentlyPlayed.dart';
import 'package:music_responsive_app/responsive/mobile/Utilities/smallText.dart';
import 'package:music_responsive_app/responsive/reusebale.dart';

import '../mobile/Utilities/bigText.dart';
import '../mobile/Utilities/drawerItem.dart';

class tabletScaffold extends StatefulWidget {
  const tabletScaffold({super.key});

  @override
  State<tabletScaffold> createState() => _tabletScaffoldState();
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

class _tabletScaffoldState extends State<tabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(top: 20.0),
                      height: 50,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          smallText(
                            text: "Discover",
                            color: Colors.grey.shade900,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: smallText(text: "Popular"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: smallText(text: "Lasteast"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: smallText(text: "Treding"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: smallText(text: "New"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        height: dimensions.height10 * 3.7,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(dimensions.radius20),
                          border: Border.all(
                            width: 2,
                            color: Colors.white,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.search, color: Colors.grey),
                            smallText(text: "Search songs here"),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.all(dimensions.size5),
                      decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(
                          dimensions.radius13,
                        ),
                      ),
                      child: Icon(
                        Icons.format_align_justify,
                        color: Colors.white,
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey.shade300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: dimensions.height22,
            ),
            Column(
              children: [
                Container(
                  width: dimensions.width20 * 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        radius: dimensions.size10,
                        backgroundColor: Color.fromARGB(255, 94, 91, 91),
                      ),
                      CircleAvatar(
                        radius: dimensions.size10,
                        backgroundColor: Colors.yellow,
                      ),
                      CircleAvatar(
                        radius: dimensions.size10,
                        backgroundColor: Colors.green,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: dimensions.height100,
                ),
                tabDrawer(
                  icon: Icons.home_outlined,
                  text: "Home",
                  iconColor: Colors.white,
                  color: Colors.lightBlue,
                ),
                SizedBox(
                  height: dimensions.height20,
                ),
                tabDrawer(
                  icon: Icons.person_outline,
                  text: "Account",
                ),
                SizedBox(
                  height: dimensions.height20,
                ),
                tabDrawer(
                  icon: Icons.local_activity_outlined,
                  text: "Activity",
                ),
                SizedBox(
                  height: dimensions.height20,
                ),
                tabDrawer(
                  icon: Icons.route_outlined,
                  text: "Prodcasts",
                ),
                SizedBox(
                  height: dimensions.height20,
                ),
                tabDrawer(
                  icon: Icons.wb_sunny_outlined,
                  text: "Theme",
                ),
                SizedBox(
                  height: dimensions.height20,
                ),
                tabDrawer(
                  icon: Icons.settings_outlined,
                  text: "Settings",
                ),
                SizedBox(
                  height: dimensions.height20,
                ),
              ],
            ),
            SizedBox(
              height: dimensions.height180,
            ),
            Padding(
              padding: EdgeInsets.only(left: dimensions.width20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: dimensions.height50 + dimensions.height10,
                    width: dimensions.width20 * 3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: Colors.white,
                        width: 3,
                        style: BorderStyle.solid,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.logout_outlined,
                          color: Colors.grey,
                        ),
                        smallText(
                          text: "Logout",
                          color: Colors.grey.shade500,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey.shade300,
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: dimensions.width10),
              child: Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        smallText(
                          text: "Popular Songs",
                          color: Colors.grey.shade800,
                          font: FontWeight.w700,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: SizedBox(
                          height: dimensions.height120,
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
                        )),
                      ],
                    ),
                    Row(
                      children: [
                        smallText(
                          text: "Treding Songs",
                          color: Colors.grey.shade800,
                          font: FontWeight.w700,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: SizedBox(
                          height: dimensions.height100 * 3,
                          child: ListView.builder(
                            itemCount: image.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return rapeurCard(
                                image: image[index],
                                name: name[index],
                              );
                            },
                          ),
                        )),
                      ],
                    ),
                    Row(
                      children: [
                        smallText(
                          text: "Recently Played",
                          color: Colors.grey.shade800,
                          font: FontWeight.w700,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              recentlyPlayed(
                                image: image[0],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: dimensions.height100 * 2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: musicBarTablet(
                                        image: image[0],
                                        artisteName: name[0],
                                        musicName: "stan",
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: musicBarTablet(
                                        image: image[3],
                                        artisteName: name[3],
                                        musicName: "l3natez",
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Padding(
                padding: EdgeInsets.only(right: dimensions.width7),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            smallText(
                              text: "Recently Played",
                              color: Colors.grey.shade800,
                              font: FontWeight.w600,
                            ),
                            smallText(text: "280 Friends")
                          ],
                        ),
                        Icon(
                          Icons.group_add_outlined,
                          color: Colors.grey,
                        )
                      ],
                    ),
                    SizedBox(
                      height: dimensions.height10,
                    ),
                    barMusicTab(
                      artisteName: "Eminem",
                      description: "Music with ilias",
                      image: image[0],
                      color: Colors.red,
                    ),
                    SizedBox(
                      height: dimensions.height5,
                    ),
                    barMusicTab(
                      artisteName: "Travis Scott",
                      description: "Music with Travis",
                      image: image[1],
                      color: Colors.green,
                    ),
                    SizedBox(
                      height: dimensions.height5,
                    ),
                    barMusicTab(
                      artisteName: "Selena",
                      description: "Music with Selena",
                      image: image[2],
                      color: Colors.yellow,
                    ),
                    SizedBox(
                      height: dimensions.height5,
                    ),
                    barMusicTab(
                      artisteName: "3antiiz",
                      description: "Music with 3antiz",
                      image: image[3],
                      color: Colors.blue,
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(dimensions.size10),
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius:
                                    BorderRadius.circular(dimensions.radius15),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    image[3],
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 200,
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.4),
                                  borderRadius: BorderRadius.only(
                                    bottomRight:
                                        Radius.circular(dimensions.radius15),
                                    bottomLeft:
                                        Radius.circular(dimensions.radius15),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: dimensions.height10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        smallText(
                                          text: "Monday morning Preacher",
                                          color: Colors.white,
                                          font: FontWeight.w600,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: dimensions.height22,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        smallText(
                                          text: "Prodcast epill",
                                          color: Colors.grey,
                                          font: FontWeight.w500,
                                          size: 13,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: dimensions.height22,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Stack(
                                          children: [
                                            Container(
                                              width: 220,
                                              height: 6,
                                              decoration: BoxDecoration(
                                                color: Colors.grey,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  13,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 140,
                                              height: 6,
                                              decoration: BoxDecoration(
                                                color: Colors.blue,
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(13),
                                                  bottomLeft:
                                                      Radius.circular(13),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 178,
                              top: 284,
                              child: CircleAvatar(
                                radius: 6,
                                backgroundColor: Colors.white,
                              ),
                            ),
                            Positioned(
                              top: 300,
                              left: 40,
                              right: 40,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.skip_previous_outlined,
                                    color: Colors.grey.shade600,
                                    size: 32,
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.blue,
                                    ),
                                    child: Icon(
                                      Icons.play_arrow_outlined,
                                      color: Colors.white,
                                      size: 32,
                                    ),
                                  ),
                                  Icon(
                                    Icons.skip_next_outlined,
                                    color: Colors.grey.shade600,
                                    size: 32,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
