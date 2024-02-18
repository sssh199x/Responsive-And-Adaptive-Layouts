import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsiveness/constants.dart';

class TAppTheme {
  TAppTheme._();
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: const Color.fromARGB(255, 72, 135, 120),
      textTheme: GoogleFonts.poppinsTextTheme(ThemeData.light().textTheme)
          .apply(bodyColor: Colors.white),
      canvasColor: secondaryColor);
  static ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: bgColorDark,
      textTheme: GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme)
          .apply(bodyColor: Colors.white),
      canvasColor: secondaryColor);
}
