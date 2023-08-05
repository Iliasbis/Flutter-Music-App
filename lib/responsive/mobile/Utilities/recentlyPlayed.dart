import 'package:flutter/material.dart';
import 'package:music_responsive_app/Utilities/dimensions.dart';
import 'package:music_responsive_app/responsive/mobile/Utilities/smallText.dart';

class recentlyPlayed extends StatelessWidget {
  final String image;

  const recentlyPlayed({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: dimensions.height180,
        child: Stack(
          children: [
            Container(
              height: dimensions.height180,
              width: MediaQuery.of(context).size.width < 500
                  ? dimensions.screenWidth
                  : dimensions.width100 * 1.4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(dimensions.radius15),
                color: Colors.teal,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(image),
                ),
              ),
            ),
            Container(
              height: dimensions.height180,
              width: MediaQuery.of(context).size.width < 500
                  ? dimensions.screenWidth
                  : dimensions.width100 * 1.4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(dimensions.radius15),
                color: Colors.grey.withOpacity(0.3),
              ),
              child: Center(
                child: CircleAvatar(
                  backgroundColor: Colors.grey.withOpacity(0.8),
                  radius: dimensions.height20 * 2,
                  child: Icon(
                    Icons.play_arrow_outlined,
                    color: Colors.white,
                    size: dimensions.height50,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
