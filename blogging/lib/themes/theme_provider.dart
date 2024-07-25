import 'package:blogging/themes/dark_theme.dart';
import 'package:blogging/themes/light_theme.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  //initialise light mode
  ThemeData _themeData = lightMode;

  //get current theme
  ThemeData get themeData => _themeData;

  //is theme dark mode
  bool get isDarkMode => _themeData == darkMode;
  //set theme
  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  //toggle
  void toggleTheme() {
    if (_themeData == lightMode) {
      themeData = darkMode;
    } else {
      themeData = lightMode;
    }
  }
}
