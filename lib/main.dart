import 'package:api_example_app/LandingScreen/landing_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart Home',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Poppins'
      ),
      home: LandingScreen(),
    );
  }
}


