import 'package:flutter/material.dart';

/* DAZN color pattern
  Login BG color: #242d34

*/

class DaznTheme {
  static TextTheme textTheme = const TextTheme(
    bodyText1: TextStyle(
      fontFamily: 'DaznTrim',
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
    headline1: TextStyle(
      fontFamily: 'DaznTrim',
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    headline2: TextStyle(
      fontFamily: 'DaznTrim',
      fontWeight: FontWeight.bold,
      fontSize: 21.0,
      color: Colors.white,
    ),
    headline3: TextStyle(
      fontFamily: 'DaznTrim',
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
    headline6: TextStyle(
      fontFamily: 'DaznTrim',
      fontSize: 20.0,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
  );

  static ThemeData theme() {
    return ThemeData(
      brightness: Brightness.dark,
      appBarTheme: AppBarTheme(
        foregroundColor: Colors.white,
        backgroundColor: Colors.grey[900],
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Colors.white,
        backgroundColor: Colors.green,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.green,
      ),
      textTheme: textTheme,
    );
  }
}
