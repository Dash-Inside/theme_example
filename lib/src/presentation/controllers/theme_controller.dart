import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class ThemeController with ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.dark;

  ThemeMode get themeMode => _themeMode;
  set themeMode(ThemeMode value) {
    _themeMode = value;
    notifyListeners();
  }

  void switchToDarkMode() => themeMode = ThemeMode.dark;
  void switchToLightMode() => themeMode = ThemeMode.light;

  void switchMode() {
    if (themeMode == ThemeMode.dark) themeMode = ThemeMode.light;
    if (themeMode == ThemeMode.light) themeMode = ThemeMode.dark;
  }
}
