import 'package:flutter/material.dart';
import 'package:recreate_app/screens/custom-splash-screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xffDEDECE),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xffDEDECE),
        ),
      ),
      home: const AnimatedSplashScreen(),
    );
  }
}
