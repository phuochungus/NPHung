import 'package:flutter/material.dart';

class Utils {
  static BuildContext _context;
  static double _actualWidth = MediaQuery.of(_context).size.width;
  static double _actualHeight = MediaQuery.of(_context).size.height;
  static final double _designedWidth = 375;
  static final double _designedHeight = 812;

  static double getResponsiveWidth(double designedWidthOfComponent) {
    return designedWidthOfComponent / _designedWidth * _actualWidth;
  }

  static double getResponsiveHeight(double designedHeightOfComponent) {
    return designedHeightOfComponent / _designedHeight * _actualHeight;
  }

  static setContext(BuildContext inputContext) {
    _context = inputContext;
  }
}
