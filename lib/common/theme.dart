import 'package:flutter/material.dart';

final themeData = ThemeData(
  primarySwatch: Colors.blue,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  fontFamily: 'Europa',
  textTheme: const TextTheme(
    bodyLarge: TextStyle(
      color: Colors.black,
      fontSize: 17,
      height: 1.3,
    ),
    bodyMedium: TextStyle(
      color: Colors.black,
      fontSize: 21,
      height: 1.3,
    ),
    labelLarge: TextStyle(
      color: Colors.black,
      fontSize: 20,
    ),
  ),
);
