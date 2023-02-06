import 'package:flutter/material.dart';

class Utils {
  static BuildContext context;
  static double actualWidth = MediaQuery.of(context).size.width;
  static double actualHeight = MediaQuery.of(context).size.height;
  static final double designedWidth = 812;
  static final double designedHeight = 375;

  static double getResponsiveWidth(double designedWidthOfComponent) {
    return designedWidthOfComponent / designedWidth * actualWidth;
  }

  static double reResponsiveHeight(double designedHeightOfComponent) {
    return designedHeightOfComponent / designedHeight * actualHeight;
  }

  static setContext(BuildContext inputContext) {
    context = inputContext;
  }
}
