import 'package:flutter/material.dart';
import 'package:theme_example/core/services/services.dart';
import 'package:theme_example/src/presentation/controllers/theme_controller.dart';
import 'package:theme_example/src/presentation/pages/home_page.dart';

class ThemeApp extends StatelessWidget {
  const ThemeApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = services<ThemeController>();

    final ThemeData themeData = ThemeData(
      useMaterial3: true,
      fontFamily: 'Roboto',
    );

    const ColorScheme lightScheme = ColorScheme.light(
      background: Color(
        0xFFAAAAFF,
      ),
    );

    const ColorScheme darkScheme = ColorScheme.dark(
      background: Color(
        0xFF000022,
      ),
    );

    return ListenableBuilder(
      listenable: themeController,
      builder: (_, __) {
        return MaterialApp(
          themeMode: themeController.themeMode,
          theme: themeData.copyWith(colorScheme: lightScheme),
          darkTheme: themeData.copyWith(colorScheme: darkScheme),
          home: const HomePage(),
        );
      },
    );
  }
}
