import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_home/SensorScreen/sensor_screen.dart';

import '../../constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key,
    this.size,
    this.title,
    this.press,
  }) : super(key: key);

  final Size size;
  final String title;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => SensorScreen(),
          ),
        );
      },
      child: Container(
        height: size.height * 0.07,
        width: double.infinity,
        decoration: BoxDecoration(
          color: kOrangeColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: kOrangeColor.withOpacity(0.5),
              blurRadius: 15,
              offset: Offset(0, 12),
            ),
            BoxShadow(
              color: kOrangeColor.withOpacity(0.5),
              blurRadius: 40,
              offset: Offset(-3, -3),
            ),
          ],
        ),
        child: Center(
          child: Text(
            'Next',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
