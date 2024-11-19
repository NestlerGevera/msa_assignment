import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    surface: Colors.grey.shade400,
    primary: Colors.grey.shade300,
    secondary: Colors.grey.shade200,
    tertiary: Colors.white,
    background: const Color(0xFF252525),
  ),
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    surface: Color(0xFF252525),
    primary: Color.fromARGB(255, 56, 56, 56),
    secondary: Color.fromARGB(255, 95, 95, 95),
    tertiary: Colors.black,
    background: Color(0xFFCECECE),
  ),
);
