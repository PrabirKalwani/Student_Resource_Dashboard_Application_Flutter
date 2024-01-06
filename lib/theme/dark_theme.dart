import "package:flutter/material.dart";

ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      background: Colors.black,
      primary: const Color.fromARGB(255, 225, 225, 225),
      secondary: const Color.fromARGB(255, 160, 159, 159),
      tertiary: Color.fromARGB(255, 20, 20, 20),
      surface: Color.fromARGB(255, 225, 225, 225),
    ));
