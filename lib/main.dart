import 'package:flutter/material.dart';
import 'package:theme_example/core/services/services.dart';
import 'package:theme_example/src/presentation/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // services related
  await initServices();

  runApp(const ThemeApp());
}
