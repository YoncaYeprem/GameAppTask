import 'package:flutter/material.dart';

enum PaddingConstants {
  PaddingLow,
  PaddingMedium,
  PaddingHigh,
  PaddingHorizontalLow,
  PaddingHorizontalMed,
  PaddingVertLow,
  PaddingVertMed,
  PaddingTop,
}

extension PaddingConstantsExtension on PaddingConstants {
  EdgeInsets get padding {
    switch (this) {
      case PaddingConstants.PaddingLow:
        return const EdgeInsets.all(8);
      case PaddingConstants.PaddingMedium:
        return const EdgeInsets.all(16);
      case PaddingConstants.PaddingHigh:
        return const EdgeInsets.all(24);
      case PaddingConstants.PaddingHorizontalLow:
        return const EdgeInsets.symmetric(horizontal: 10);
      case PaddingConstants.PaddingHorizontalMed:
        return const EdgeInsets.symmetric(horizontal: 20);
      case PaddingConstants.PaddingVertLow:
        return const EdgeInsets.only(top: 10);
      case PaddingConstants.PaddingVertMed:
        return const EdgeInsets.symmetric(vertical: 20);
      case PaddingConstants.PaddingTop:
        return const EdgeInsets.only(top: 5);
      default:
        return const EdgeInsets.all(0);
    }
  }
}
