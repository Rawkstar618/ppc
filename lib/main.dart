import 'package:flutter/material.dart';
import 'package:ppc/color_scheme/light.dart';
import 'package:ppc/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: universalTheme,
      home: const HomePage(),
    );
  }
}
