import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:maqal/constants/colors.dart';

ThemeData lightTheme = ThemeData(
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.transparent,
    elevation: 0.0,
    foregroundColor: Colors.black,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  ),
  primarySwatch: kPrimaryColor,
  useMaterial3: true,
);
