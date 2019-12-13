import 'package:flutter/material.dart';

class MyracleDesignTheme {
  ThemeData dark = ThemeData.dark().copyWith(
    primaryColor: Color(0xFF101639),
    scaffoldBackgroundColor: Color(0xFF0C1234),
    accentColor: Color(0xFFFF0067),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Color(0xFFFF2E95),
      foregroundColor: Colors.white,
    ),
    textTheme: TextTheme(
      body1: TextStyle(color: Colors.white),
      button: TextStyle(color: Colors.white),
    ),
  );
}
