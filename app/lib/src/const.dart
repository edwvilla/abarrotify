import 'package:flutter/material.dart';

final Color kBackGroundColor = Colors.grey[50];

final IconThemeData kIconTheme = IconThemeData(
  color: Colors.grey[850],
);

final ThemeData kThemeData = ThemeData.light().copyWith(
  accentColor: Colors.white,
  backgroundColor: kBackGroundColor,
  scaffoldBackgroundColor: kBackGroundColor,
  appBarTheme: AppBarTheme(
    color: kBackGroundColor,
    elevation: 0,
    iconTheme: kIconTheme,
    actionsIconTheme: kIconTheme,
  ),
);

const List<Color> colours = <Color>[
  Color(0xFF81eab5),
  Color(0xFF8bc4ff),
  Color(0xFF8cffc5),
  Color(0xFFa3f7cd),
  Color(0xFF2e58ff),
];
