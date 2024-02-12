import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsiveness/constants.dart';

class TAppTheme {
  TAppTheme._();
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: bgColorLight,
      textTheme: GoogleFonts.poppinsTextTheme(ThemeData.light().textTheme)
          .apply(bodyColor: Colors.black),
      canvasColor: secondaryColor);
  static ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: bgColorDark,
      textTheme: GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme)
          .apply(bodyColor: Colors.white),
      canvasColor: secondaryColor);
}
