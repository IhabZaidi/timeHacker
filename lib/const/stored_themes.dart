import 'package:flutter/material.dart';

List<ThemeData> getStoredThemes() {
  return [
    lightTheme,
    darkTheme,
  ];
}

String ubuntoFont = 'ubunto';

final ThemeData lightTheme = ThemeData(
  fontFamily: ubuntoFont,
  primaryColor: Colors.amber,
  scaffoldBackgroundColor: Colors.white.withOpacity(0.8),
  shadowColor: Colors.black.withOpacity(.05),
  colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
                .copyWith(
                    secondary: Colors.blueAccent, brightness: Brightness.light),
);

final ThemeData darkTheme = ThemeData(
  fontFamily: ubuntoFont,
  primaryColor: Colors.amber,
  scaffoldBackgroundColor: Colors.white.withOpacity(0.8),
  shadowColor: Colors.black.withOpacity(.05),
  colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
      .copyWith(secondary: Colors.blueAccent, brightness: Brightness.dark),
);
