import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTheme {
  static bool isDarkMode = false;
  static const Color primaryColor = Colors.blue;
  static const Color accentColor = Color.fromARGB(255, 1, 67, 180);
  // static const Color primaryColor = Color(0xffA82C36);
  static const Color secondaryColor = Colors.blueGrey;
  // static const Color secondaryColor = Color(0xffB59819);
  static const Color backgroundColor = Colors.blue;
  // static const Color backgroundColor = Color.fromARGB(255, 218, 217, 217);
  static final TextStyle defaultFontStyle = GoogleFonts.manrope();

  static final TextTheme textTheme = TextTheme(
    headlineLarge: defaultFontStyle,
    headlineMedium: defaultFontStyle,
    headlineSmall: defaultFontStyle,
    bodyLarge: defaultFontStyle,
    bodyMedium: defaultFontStyle,
    bodySmall: defaultFontStyle,
    displayLarge: defaultFontStyle,
    displayMedium: defaultFontStyle,
    displaySmall: defaultFontStyle,
    titleLarge: defaultFontStyle,
    titleMedium: defaultFontStyle,
    titleSmall: defaultFontStyle,
    labelLarge: defaultFontStyle,
    labelMedium: defaultFontStyle,
    labelSmall: defaultFontStyle,
  );

  static final ThemeData dark = ThemeData(
    useMaterial3: true,
    textTheme: textTheme,
    colorScheme: ColorScheme.fromSeed(
      brightness: isDarkMode ? Brightness.dark : Brightness.light,
      seedColor: primaryColor,
      // dynamicSchemeVariant: DynamicSchemeVariant.fidelity
    ),
  );
}
