import 'package:flutter/material.dart';

const Color bluishClr = Color(0xFF4e5ae8);
const Color yellowClr = Color(0xFFFFB746);
const primaryClr = bluishClr;
const darkGreyClr = Color(0xFF424242);

class Themes {
  static final light = ThemeData.light().copyWith(
    appBarTheme: const AppBarTheme(
      backgroundColor: primaryClr,
    ),
    brightness: Brightness.light,
  );

  static final dark = ThemeData.dark().copyWith(
    appBarTheme: const AppBarTheme(
      backgroundColor: darkGreyClr,
    ),
    brightness: Brightness.dark,
  );
}
