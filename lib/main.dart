import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EmoSync',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        brightness: Brightness.dark,
      ),
      home: SplashScreen(),
    );
  }
}
