import 'package:flutter/material.dart';
import 'package:smart_home/LandingScreen/components/body.dart';
import '../constants.dart';

class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      body: LandingScreenBody(),
    );
  }
}
