import 'package:flutter/material.dart';
import 'package:practiceflutter/screens/screens.dart';
import 'config/Pallete.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is  the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme:
            const ColorScheme.light().copyWith(primary: Pallete.primaryColor),
        textTheme: TextTheme(
          bodyText1: const TextStyle(color: Pallete.secondaryColor),
          bodyText2: TextStyle(color: Pallete.primaryColor.withOpacity(0.35)),
          headline1: TextStyle(color: Pallete.secondaryColor),
        ),
      ),
      home: const SafeArea(child: HomeScreen()),
    );
  }
}
