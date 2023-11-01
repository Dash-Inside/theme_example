import 'package:flutter/material.dart';
import 'package:theme_example/core/services/services.dart';
import 'package:theme_example/src/presentation/controllers/theme_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = services<ThemeController>();

    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              themeController.switchMode();
            },
            child: const SizedBox(
              width: double.infinity,
              child: Text(
                'Switch to next mode',
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              themeController.switchToLightMode();
            },
            child: const SizedBox(
              width: double.infinity,
              child: Text(
                'Switch to Light mode',
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              themeController.switchToDarkMode();
            },
            child: const SizedBox(
              width: double.infinity,
              child: Text(
                'Switch to Dark mode',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
