import 'package:flutter/material.dart';

const Color bluishClr = Color(0xff4e5ae8);
const Color yellowClr = Color(0xffffb746);
const Color pinkClr = Color(0xffff4667);
const Color white = Colors.white;
const Color primaryClr = bluishClr;
const Color darkGreyClr = Color(0xff121212);
Color darkHeaderClr = const Color(0xff424242);




class Themes{

  static final lightMode = ThemeData(

    colorScheme: const ColorScheme(
      primary: primaryClr,
      brightness: Brightness.light,
      onPrimary: Colors.white,

      // Colors that are not relevant to AppBar in LIGHT mode:
      primaryVariant: Colors.grey,
      secondary: Colors.grey,
      secondaryVariant: Colors.grey,
      onSecondary: Colors.grey,
      background: Colors.grey,
      onBackground: Colors.grey,
      surface: Colors.grey,
      onSurface: Colors.grey,
      error: Colors.grey,
      onError: Colors.grey,
    ),

  );

  static final darkMode = ThemeData(

    colorScheme: const ColorScheme(
      primary: darkGreyClr,
      brightness: Brightness.dark,
      onPrimary: Colors.white,

      // Colors that are not relevant to AppBar in LIGHT mode:
      primaryVariant: Colors.grey,
      secondary: Colors.grey,
      secondaryVariant: Colors.grey,
      onSecondary: Colors.grey,
      background: Colors.grey,
      onBackground: Colors.grey,
      surface: darkGreyClr,
      onSurface: Colors.white,
      error: Colors.grey,
      onError: Colors.grey,
    ),

  );

}