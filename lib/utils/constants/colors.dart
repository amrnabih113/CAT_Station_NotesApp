import 'package:flutter/material.dart';

class MyColors {
  MyColors._();

  // App basic Colors
  static const Color primaryColor = Color(0xFF986254);
  static const Color secondaryColor = Color(0xFFFFE42B);
  static const Color accent = Color(0xFFB0C7FF);

  // Text Colors
  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecondary = Color(0xFF6c757d);
  static const Color textWhite = Colors.white;

  // Background Colors
  static const Color light = Color(0xFFF6f6f6);
  static const Color dark = Color(0xFF252525);
  static const Color primaryBackground = Color(0xFFF3F5FF);

  //Background container Colors
  static const Color lightContainer = Color(0xFFF6F6F6);
  static const Color darkContainer = Color(0xFF3B3B3B);

  // Button Colors
  static const Color primaryButton = MyColors.primaryColor;
  static const Color secondaryButton = Color(0xff6c757d);
  static const Color disabledButton = Color(0xffc4c4c4);

  //border Colors
  static const Color primaryBorder = Color(0xFFD9D9D9);
  static const Color secondaryBorder = Color(0xFFE6E6E6);

  //Error Colors
  static const Color error = Color(0xFFDC3545);
  static const Color success = Color(0xFF28A745);
  static const Color warning = Color(0xFFFFC107);
  static const Color info = Color(0xFF17A2B8);

  // Neutral Shades
  static const Color black = Color(0xFF232323);
  static const Color darkerGrey = Color(0xFF4F4F4F);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFE0E0E0);
  static const Color softGrey = Color(0xFFF4F4F4);
  static const Color lightGrey = Color(0xFFF9F9F9);
  static const Color white = Color(0xFFFFFFFF);

 static final Map<String, Color> colorOptions = {
    'red': Colors.red.shade100,
    'blue': Colors.blue.shade100,
    'orange': Colors.orange.shade100,
    'green': Colors.green.shade100,
    'yellow': Colors.yellow.shade100,
  };

  static Color getColor(String? color) {
    switch (color) {
      case "red":
        return Colors.red.shade100;
      case "green":
        return Colors.green.shade100;
      case "yellow":
        return Colors.yellow.shade100;
      case "blue":
        return Colors.blue.shade100;
      case "orange":
        return Colors.orange.shade100;
      default:
        return Colors.grey.shade100;
    }
  }
}
