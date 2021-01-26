import 'package:api_example_app/SensorScreen/components/body.dart';
import 'package:api_example_app/constants.dart';
import 'package:flutter/material.dart';

class SensorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:kBgColor,
      body: SensorScreenBody(),
    );
  }
}

