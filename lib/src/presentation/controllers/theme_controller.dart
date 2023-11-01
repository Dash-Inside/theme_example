import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@Singleton()
class ThemeController with ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.dark;

  ThemeMode get themeMode => _themeMode;
  set themeMode(ThemeMode value) {
    _themeMode = value;
    log(_themeMode.toString());
    notifyListeners();
  }

  void switchToDarkMode() => themeMode = ThemeMode.dark;
  void switchToLightMode() => themeMode = ThemeMode.light;

  void switchMode() {
    if (themeMode == ThemeMode.dark) {
      themeMode = ThemeMode.light;
      return;
    }

    if (themeMode == ThemeMode.light) {
      themeMode = ThemeMode.dark;
      return;
    }
  }
}
