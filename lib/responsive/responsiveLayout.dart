import 'package:flutter/material.dart';

class responsiveLayout extends StatefulWidget {
  final Widget mobileScaffold;
  final Widget tabletScaffold;
  final Widget webScaffold;
  responsiveLayout({super.key, required this.mobileScaffold, required this.tabletScaffold, required this.webScaffold});

  @override
  State<responsiveLayout> createState() => _responsiveLayoutState();
}

class _responsiveLayoutState extends State<responsiveLayout> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constains) {
      if (constains.maxWidth < 500) {
        return widget.mobileScaffold;
      } else if (constains.maxWidth < 1000) {
        return widget.tabletScaffold;
      } else {
        return widget.webScaffold;
      }
    });
    ;
  }
}
