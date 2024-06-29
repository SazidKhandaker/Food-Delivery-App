import 'package:flutter/material.dart';
import 'package:food_delivery_app/Them/darkmode.dart';
import 'package:food_delivery_app/Them/lightmode.dart';

class Themeprovider with ChangeNotifier {
  ThemeData _themeData = lightmode;
  ThemeData get themData => _themeData;
  bool get isDarkMode => _themeData == darkmode;

  set themData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == lightmode) {
      themData = darkmode;
    } else {
      themData = lightmode;
    }
  }
}
