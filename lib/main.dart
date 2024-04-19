import 'package:flutter/material.dart';
import 'package:sport_app/Screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light
      ),
      darkTheme: ThemeData(
          useMaterial3: true,
          brightness: Brightness.dark
      ),
      themeMode: ThemeMode.dark,
      home: const HomeScreen(),
    );
  }
}
