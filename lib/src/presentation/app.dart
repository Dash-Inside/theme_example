import 'package:flutter/material.dart';
import 'package:theme_example/core/services/services.dart';
import 'package:theme_example/src/presentation/controllers/theme_controller.dart';
import 'package:theme_example/src/presentation/pages/home_page.dart';

class ThemeApp extends StatelessWidget {
  const ThemeApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = services<ThemeController>();

    return ListenableBuilder(
      listenable: themeController,
      builder: (_, __) {
        return MaterialApp(
          themeMode: themeController.themeMode,
          theme: ThemeData(
            useMaterial3: true,
            colorScheme: const ColorScheme.light(
              background: Color(
                0xFFAAAAFF,
              ),
            ),
          ),
          darkTheme: ThemeData(
            useMaterial3: true,
            colorScheme: const ColorScheme.dark(
              background: Color(
                0xFF000022,
              ),
            ),
          ),
          home: const HomePage(),
        );
      },
    );
  }
}
