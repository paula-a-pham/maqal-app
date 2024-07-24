import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:maqal/constants/colors.dart';

ThemeData lightTheme = ThemeData(
  colorSchemeSeed: kPrimaryColor,
  appBarTheme: const AppBarTheme(
    titleSpacing: 15.0,
    backgroundColor: Colors.transparent,
    elevation: 0.0,
    foregroundColor: Colors.black,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontFamily: 'Tajawal',
      fontSize: 25.0,
      fontWeight: FontWeight.w500,
    ),
  ),
  fontFamily: 'Tajawal',
  useMaterial3: true,
);
