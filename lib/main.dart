import 'package:flutter/material.dart';
import 'package:note_app_test/ui/screens/home_screen.dart';
import 'package:note_app_test/utils/theme/theme.dart';

void main() {
  // initialze the database

  //initialize firebase

  //initialize api

  // initilaize dependecy injection

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: MyTheme.darkTheme,
      theme: MyTheme.lightTheme,
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
