import 'dart:math';

import 'package:flutter/material.dart';
import 'page/home_page.dart';
import 'app/s.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  static final _random = Random();

  static MaterialColor _getRandomColor() =>
      Colors.primaries[_random.nextInt(Colors.primaries.length)];

  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Skill Matrix',
      localizationsDelegates: S.localizationsDelegates,
      supportedLocales: S.supportedLocales,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.light(primary: _getRandomColor()),
      ),
      home: const HomePage(),
    );
  }
}
