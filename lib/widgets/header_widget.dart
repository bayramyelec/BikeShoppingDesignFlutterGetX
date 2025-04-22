import 'dart:ui';
import 'package:ecommerce_flutter_getx/src/screen_size.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Stack(
        children: [
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 200, sigmaY: 200),
            child: Container(
              height: ScreenSize.screenHeight * 0.25,
              width: ScreenSize.screenWidth,
              color: Colors.black.withAlpha(75),
            ),
          ),
          Positioned(
            top: 10,
            left: 10,
            right: 10,
            bottom: 10,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/images/3.png', fit: BoxFit.contain),
                Text(
                  '30% Off',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white54,
                    fontSize: 28,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
