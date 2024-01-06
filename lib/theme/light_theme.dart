import "package:flutter/material.dart";

ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      background: Colors.white,
      primary: const Color.fromARGB(255, 0, 0, 0),
      tertiary: Colors.grey[300]!,
      surface: const Color.fromARGB(255, 0, 0, 0),
    ));
