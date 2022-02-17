import 'package:flutter/material.dart';

enum ColorConstants {
  BackgroundWhite,
  ThemeColor,
  ButtonColor,
  IconColor,
  BlackColor,
  ColorRed,
}

extension ColorConstantExtension on ColorConstants {
  Color get color {
    switch (this) {
      case ColorConstants.BackgroundWhite:
        return Colors.white;
      case ColorConstants.ButtonColor:
        return const Color(0xFF6C63FF);
      case ColorConstants.ThemeColor:
        return const Color(0xFF6C63FF);
      case ColorConstants.IconColor:
        return const Color(0xFF6C63FF);
      case ColorConstants.BlackColor:
        return Colors.black;
      case ColorConstants.ColorRed:
        return Colors.red;
      default:
        return Colors.transparent;
    }
  }
}
