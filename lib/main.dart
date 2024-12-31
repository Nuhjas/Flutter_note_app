import 'package:flutter/material.dart';
import 'package:note1/ui/main_page/homepage.dart';

import 'core/color/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Note1',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
            .copyWith(background: Colors.black),
            scaffoldBackgroundColor: backgroundColor,
            textTheme: const TextTheme(
              bodyLarge: TextStyle(color: Colors.white),
              bodyMedium:  TextStyle(color: Colors.white),
            )
      ),
      home: home_screen(),
    );
  }
}
