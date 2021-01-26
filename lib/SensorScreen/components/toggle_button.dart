import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StatusButton extends StatefulWidget {
  @override
  _StatusButtonState createState() => _StatusButtonState();
}

class _StatusButtonState extends State<StatusButton>
    with SingleTickerProviderStateMixin {
  bool isChecked = false;
  Animation<Alignment> _animation;
  AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 350),
    );

    _animation = Tween<Alignment>(
            begin: Alignment.bottomCenter, end: Alignment.topCenter)
        .animate(
      CurvedAnimation(
          parent: _animationController,
          curve: Curves.linear,
          reverseCurve: Curves.easeInBack),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AnimatedBuilder(
      animation: _animationController,
      builder: (animation, child) {
        return GestureDetector(
          onTap: () {
            setState(() {
              if (_animationController.isCompleted) {
                _animationController.animateTo(20);
              } else {
                _animationController.animateTo(0);
              }
              isChecked = !isChecked;
            });
          },
          child: Container(
            height: size.height * 0.045,
            width: size.width * 0.06,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: isChecked ? Colors.grey.shade50 : Colors.lightGreen,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200,
                  blurRadius: 8,
                  offset: Offset(3, 3),
                ),
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 5,
                  offset: Offset(-3, -3),
                ),
              ],
            ),
            child: Align(
              alignment: _animation.value,
              child: Container(
                width: size.width * 0.04,
                height: size.height * 0.019,
                margin: EdgeInsets.only(
                    left: size.width * 0.01,
                    right: size.width * 0.01,
                    top: 2,
                    bottom: 2),
                decoration: BoxDecoration(
                    color: Colors.grey.shade300, shape: BoxShape.circle),
              ),
            ),
          ),
        );
      },
    );
  }
}
