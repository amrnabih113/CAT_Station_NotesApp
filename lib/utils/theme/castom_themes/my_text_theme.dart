import 'package:flutter/material.dart';

class MyTextTheme {
  MyTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(fontSize: 32.0, fontWeight: FontWeight.bold,color: Colors.black ),
    headlineMedium: const TextStyle().copyWith(fontSize: 24.0, fontWeight: FontWeight.w600,color: Colors.black ),
    headlineSmall: const TextStyle().copyWith(fontSize: 20.0, fontWeight: FontWeight.w500,color: Colors.black ),

    titleLarge: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w600,color: Colors.black ),
    titleMedium: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w500,color: Colors.black ),
    titleSmall: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w500,color: Colors.black ),

    bodyLarge: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.w500,color: Colors.black ),
    bodyMedium: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.normal,color: Colors.black ),
    bodySmall: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.w500,color: Colors.black.withValues( alpha: 0.5) ),

    labelLarge: const TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.normal,color: Colors.black ),
    labelMedium: const TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.normal,color: Colors.black.withValues( alpha: 0.5)),
    labelSmall: const TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.normal,color: Colors.black.withValues( alpha: 0.5) ),
  );

  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(fontSize: 32.0, fontWeight: FontWeight.bold,color: Colors.white ),
    headlineMedium: const TextStyle().copyWith(fontSize: 24.0, fontWeight: FontWeight.w600,color: Colors.white ),
    headlineSmall: const TextStyle().copyWith(fontSize: 20.0, fontWeight: FontWeight.w500,color: Colors.white ),

    titleLarge: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w600,color: Colors.white ),
    titleMedium: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w500,color: Colors.white ),
    titleSmall: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w500,color: Colors.white ),

    bodyLarge: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.w500,color: Colors.white ),  
    bodyMedium: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.normal,color: Colors.white ),
    bodySmall: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.w500,color: Colors.white.withValues( alpha: 0.5) ),

    labelLarge: const TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.normal,color: Colors.white ),
    labelMedium: const TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.normal,color: Colors.white.withValues( alpha: 0.5) ),
    labelSmall: const TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.normal,color: Colors.white.withValues( alpha: 0.5) ),


  );
}
