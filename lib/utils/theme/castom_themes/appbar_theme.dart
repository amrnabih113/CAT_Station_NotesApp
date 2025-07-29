import 'package:flutter/material.dart';

class MyAppbarTheme {
  MyAppbarTheme._();

  static final AppBarTheme lightAppbarTheme = const AppBarTheme(
    centerTitle: false,
    backgroundColor: Colors.transparent,
    elevation: 0,
    titleTextStyle:  TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  );

  static final AppBarTheme darkAppbarTheme = const AppBarTheme(
    centerTitle: false,
    backgroundColor: Colors.transparent,
    elevation: 0,
    titleTextStyle:  TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  );
}
