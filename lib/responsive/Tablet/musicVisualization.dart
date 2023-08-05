import 'package:flutter/material.dart';

import '../mobile/Utilities/bar.dart';

class musicVisual extends StatelessWidget {
  final Color color;
  const musicVisual({this.color = Colors.blue, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
