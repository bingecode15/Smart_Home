import 'package:api_example_app/constants.dart';
import 'package:flutter/material.dart';

class ControlButton extends StatefulWidget {
  const ControlButton({
    Key key,
    @required this.size,
    this.icon,
    this.title,
  }) : super(key: key);

  final Size size;
  final IconData icon;
  final String title;

  @override
  _ControlButtonState createState() => _ControlButtonState();
}

class _ControlButtonState extends State<ControlButton> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isSelected = !isSelected;
            });
          },
          child: Container(
            height: widget.size.height * 0.105,
            width: widget.size.width * 0.21,
            decoration: BoxDecoration(
              color: isSelected ? kOrangeColor : Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: isSelected
                      ? kOrangeColor.withOpacity(0.5)
                      : Colors.grey.shade200,
                  blurRadius: 30,
                  offset: Offset(5, 5),
                ),
              ],
            ),
            child: Icon(
              widget.icon,
              color:
                  isSelected ? Colors.white : kDarkGreyColor.withOpacity(0.6),
              size: 45,
            ),
          ),
        ),
        SizedBox(height: widget.size.height * 0.005),
        Text(
          widget.title,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: kDarkGreyColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
