import 'package:flutter/material.dart';
import 'package:music_responsive_app/responsive/Tablet/tabletScaffold.dart';
import 'package:music_responsive_app/responsive/mobile/mobileScaffold.dart';
import 'package:music_responsive_app/responsive/responsiveLayout.dart';
import 'package:music_responsive_app/responsive/web/webScaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.grey),
      home: responsiveLayout(
        mobileScaffold: const mobileScaffold(),
        tabletScaffold: const tabletScaffold(),
        webScaffold: const webScaffold(),
      ),
    );
  }
}
