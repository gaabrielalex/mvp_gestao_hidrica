import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.green.shade700),
);

final ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.green.shade700,
    brightness: Brightness.dark,
  ),
);

ThemeData getTheme(BuildContext context) {
  return Theme.of(context).brightness == Brightness.dark
      ? darkTheme
      : lightTheme;
}




