import 'package:flutter/material.dart';
import 'package:note_app_test/utils/constants/colors.dart';
import 'package:note_app_test/utils/theme/castom_themes/appbar_theme.dart';
import 'package:note_app_test/utils/theme/castom_themes/my_floating_action_button_theme.dart';
import 'package:note_app_test/utils/theme/castom_themes/my_text_theme.dart';

class MyTheme {
  MyTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: MyColors.light,
    brightness: Brightness.light,
    primaryColor: MyColors.primaryColor,
    colorScheme: ColorScheme.fromSeed(seedColor: MyColors.primaryColor),
    appBarTheme: MyAppbarTheme.lightAppbarTheme,
    elevatedButtonTheme: ElevatedButtonThemeData(),
    textTheme: MyTextTheme.lightTextTheme,
    floatingActionButtonTheme: MyFloatingActionButtonTheme.theme
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: MyColors.dark,
    brightness: Brightness.light,
    primaryColor: MyColors.primaryColor,
    colorScheme: ColorScheme.fromSeed(seedColor: MyColors.primaryColor),
    appBarTheme: MyAppbarTheme.darkAppbarTheme,
    elevatedButtonTheme: ElevatedButtonThemeData(),
    textTheme: MyTextTheme.darkTextTheme,
    floatingActionButtonTheme: MyFloatingActionButtonTheme.theme
  );
}
