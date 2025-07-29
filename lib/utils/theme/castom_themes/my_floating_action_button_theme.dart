import 'package:flutter/material.dart';
import 'package:note_app_test/utils/constants/colors.dart';

class MyFloatingActionButtonTheme {
  MyFloatingActionButtonTheme._();

  static final FloatingActionButtonThemeData theme =
      FloatingActionButtonThemeData(
        backgroundColor: MyColors.primaryColor,
        foregroundColor: Colors.white,
        shape: CircleBorder(),
        iconSize: 20,
      );
}
