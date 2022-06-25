import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wirepostt/loginpage.dart';
import 'fooderlich_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // TODO: Create theme
    final theme = WirepostTheme.dark();
    // TODO: Apply Home widget
    // 3
    return MaterialApp(
      theme: theme,
      title: 'Wirepost',
      home: const loginpage(),
    );
  }
}
