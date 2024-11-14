import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

const _primaryColor = Color(0xFFE21D27);
const greyColor = Color(0xFFF7F7F9);
const textSecondaryColor = Color(0xFF959597);

final lightTheme = ThemeData(
  useMaterial3: true,
  primaryColor: _primaryColor,
  textTheme: _textTheme,
  scaffoldBackgroundColor: const Color(0xFFF7F7F9),
  appBarTheme: AppBarTheme(backgroundColor: const Color(0xFFF7F7F9), titleTextStyle: _textTheme.headlineLarge),
);

const _textTheme = TextTheme(
  titleSmall: TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  ),
  titleMedium: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
  ),
  titleLarge: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
  ),
  headlineLarge: TextStyle(fontSize: 19, fontWeight: FontWeight.w500, color: Colors.black),
);
