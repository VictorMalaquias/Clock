import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: ThemeData(
          brightness: Brightness.light, backgroundColor: Colors.black),
      dark:
          ThemeData(brightness: Brightness.dark, backgroundColor: Colors.white),
      initial: AdaptiveThemeMode.light,
      builder: (theme, darktheme) => MaterialApp(
        darkTheme: darktheme,
        theme: theme,
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
      ),
    );
  }
}
