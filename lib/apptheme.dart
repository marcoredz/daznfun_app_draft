import 'package:flutter/material.dart';

/* DAZN Color Pattern */
class DaznCP {
  static const Color loginBgColor = Color(0xFF242d34);
  static const Color loginGray = Color(0xFF666C71);
  static const Color accent = Color(0xFFf7ff1a);
  static const Color secondary = Color(0xFF0c161c);
  static const Color mainBackground = Color(0xFF081014);
}

class DaznTheme {
  static TextTheme textTheme = const TextTheme(
    bodyText1: TextStyle(
      fontFamily: 'DaznTrim',
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
    bodyText2: TextStyle(
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
      appBarTheme: AppBarTheme(
        foregroundColor: Colors.white,
        backgroundColor: Colors.grey[900],
      ),
      scaffoldBackgroundColor: DaznCP.mainBackground,
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Colors.black,
        backgroundColor: DaznCP.accent,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.green,
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(DaznCP.accent),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
          shape: MaterialStateProperty.all<BeveledRectangleBorder>(
              BeveledRectangleBorder(borderRadius: BorderRadius.circular(0))),
          padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(12)),
          textStyle: MaterialStateProperty.all<TextStyle>(textTheme.headline3 ?? const TextStyle()),
        ),
      ),
      textTheme: textTheme,
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: Colors.white,
      ),
      inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: Colors.white),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: DaznCP.loginGray),
          borderRadius: BorderRadius.zero,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: Colors.black),
          borderRadius: BorderRadius.zero,
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: Colors.red),
          borderRadius: BorderRadius.zero,
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: Colors.red),
          borderRadius: BorderRadius.zero,
        ),
      ),
    );
  }
}
