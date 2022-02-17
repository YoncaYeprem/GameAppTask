import 'package:flutter/material.dart';

enum RadiusConstants {
  Radius20,
}

extension BorderRadiusConstantExtension on RadiusConstants {
  Radius get radius {
    switch (this) {
      case RadiusConstants.Radius20:
        return const Radius.circular(20.0);
      default:
        return const Radius.circular(0);
    }
  }
}
