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
