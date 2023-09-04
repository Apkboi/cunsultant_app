import 'package:cunsultant_app/utils/theme/color_schemes.g.dart';
import 'package:cunsultant_app/utils/theme/text_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme =
      ThemeData(colorScheme: lightColorScheme, textTheme: textTheme);
  static ThemeData darkTheme =
      ThemeData(colorScheme: darkColorScheme, textTheme: textTheme);
}
