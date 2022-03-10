import 'package:flutter/material.dart';

ThemeData globalTheme() => ThemeData(
  fontFamily: 'Roboto',
  splashColor: Colors.indigoAccent,

  colorScheme: ColorScheme.fromSwatch(
    brightness: Brightness.dark,
    primarySwatch: Colors.deepPurple,).copyWith(
    secondary: Colors.deepOrangeAccent,
  ),

  textTheme: const TextTheme(
    headline1: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
    headline6: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.deepOrange),
    bodyText2: TextStyle(fontSize: 25, fontFamily: 'TimesNewRoman', color: Colors.blueAccent,
    ),
  ),
);