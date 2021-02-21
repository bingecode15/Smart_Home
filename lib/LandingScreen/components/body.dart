import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_home/LandingScreen/components/control_button.dart';
import 'package:smart_home/LandingScreen/components/default_button.dart';
import 'package:smart_home/SensorScreen/sensor_screen.dart';

import '../../constants.dart';

class LandingScreenBody extends StatefulWidget {
  @override
  _LandingScreenBodyState createState() => _LandingScreenBodyState();
}

class _LandingScreenBodyState extends State<LandingScreenBody> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(height: size.height * 0.1),
          Center(
            child: Text(
              'What do you think you\'ll\nmostly use?',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 25,
              ),
            ),
          ),
          SizedBox(height: size.height * 0.05),
          Center(
            child: Text(
              'Tap on all that apply.This will help us\ncustomize your home page.',
              textAlign: TextAlign.center,
              style: TextStyle(color: kDarkGreyColor, fontSize: 18),
            ),
          ),
          SizedBox(height: size.height * 0.05),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ControlButton(
                size: size,
                title: 'Maintenance\nRequests',
                icon: Icons.settings_outlined,
              ),
              ControlButton(
                size: size,
                title: 'Integrations\n ',
                icon: Icons.grain,
              ),
              ControlButton(
                size: size,
                title: 'Light\nControl',
                icon: Icons.highlight,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ControlButton(
                size: size,
                title: 'Leak\nDetector',
                icon: Icons.opacity,
              ),
              ControlButton(
                size: size,
                title: 'Temperature\nControl ',
                icon: Icons.ac_unit,
              ),
              ControlButton(
                size: size,
                title: 'Guest\nAccess',
                icon: Icons.vpn_key,
              ),
            ],
          ),
          SizedBox(height: size.height * 0.05),
          DefaultButton(
            size: size,
            title: "Next",
            press: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => SensorScreen(),
                ),
              );
            },
          ),
          SizedBox(height: size.height * 0.05),
        ],
      ),
    );
  }
}
