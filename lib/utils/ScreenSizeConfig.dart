import 'package:flutter/widgets.dart';

class ScreenSizeConfig {
  static late double screenHeight;
  static late double screenWidth;

  static void init(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
  }

  static double heightPercentage(double percent) {
    return screenHeight * percent / 100;
  }

  static double widthPercentage(double percent) {
    return screenWidth * percent / 100;
  }
}
