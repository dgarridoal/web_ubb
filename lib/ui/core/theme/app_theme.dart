import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemeCustom {
  const AppThemeCustom._();

  static const primaryColor = Color(0xFFFBC400);
  static final secondaryColor = const Color(0xFFC4C4C4).withOpacity(0.3);

  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: GoogleFonts.poppinsTextTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: GoogleFonts.poppinsTextTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
