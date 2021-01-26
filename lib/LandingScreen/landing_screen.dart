import 'package:api_example_app/LandingScreen/components/body.dart';
import 'package:api_example_app/constants.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      body: LandingScreenBody(),
    );
  }
}
