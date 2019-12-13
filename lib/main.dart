import 'package:bmi_calculator/input_page.dart';
import 'package:bmi_calculator/themes/dart_theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      darkTheme: MyracleDesignTheme().dark,
      home: InputPage(),
    );
  }
}
