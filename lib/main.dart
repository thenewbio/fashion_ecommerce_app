import 'package:fashion_ecommerce/core/ui/home_screen.dart';
import 'package:fashion_ecommerce/core/ui/onboarding_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fashion Ecommerce',
      theme:
          ThemeData(primarySwatch: Colors.yellow, primaryColor: Colors.amber),
      home: const OnboardingScreen(),
    );
  }
}
