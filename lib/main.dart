import 'package:flutter/material.dart';
import 'package:motivational_app/homePage/on_boaring.dart';

void main() {
  runApp(const MotivationApp());
}

class MotivationApp extends StatelessWidget {
  const MotivationApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
    );
  }
}


