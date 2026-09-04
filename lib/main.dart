import 'package:flutter/material.dart';
import 'package:phase0_dev_profile/screens/home_screen.dart';

void main() {
  runApp(const MyDevProfileApp());
}

class MyDevProfileApp extends StatefulWidget {
  const MyDevProfileApp({super.key});

  @override
  State<MyDevProfileApp> createState() => _MyDevProfileAppState();
}

class _MyDevProfileAppState extends State<MyDevProfileApp> {
  bool _isDarkMode = false;

  void _toggleTheme() {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mi Perfil Dev',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.dark,
        ),
      ),
      themeMode: _isDarkMode ? ThemeMode.dark : ThemeMode.light,
      home: HomeScreen(
        isDarkMode: _isDarkMode,
        onToggleTheme: _toggleTheme,
      ),
    );
  }
}
