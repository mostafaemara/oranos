import 'package:flutter/material.dart';
import 'package:oranos/src/styles/ui_constants.dart';

class AppTheme {
  static get lightTheme {
    return ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
                textStyle: MaterialStateProperty.all<TextStyle>(const TextStyle(
                    fontFamily: AppFonts.poppins,
                    fontWeight: FontWeight.w500,
                    fontSize: 18)),
                elevation: MaterialStateProperty.all<double>(0),
                shape: MaterialStateProperty.all(const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(6)))))),
        fontFamily: AppFonts.poppins,
        colorScheme: const ColorScheme(
            brightness: Brightness.light,
            primary: AppColors.mainGreen,
            onPrimary: Colors.white,
            secondary: AppColors.mainGreen,
            onSecondary: Colors.white,
            error: Colors.red,
            onError: Colors.white,
            background: Colors.white,
            onBackground: Colors.black,
            surface: Colors.white,
            onSurface: Colors.white));
  }
}
