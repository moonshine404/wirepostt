import 'package:flutter/material.dart';
import 'package:wirepostt/landingpage/loginpage.dart';
import 'wirepost_theme.dart';

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
