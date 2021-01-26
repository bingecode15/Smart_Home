import 'package:flutter/material.dart';

class StatusButton extends StatelessWidget {
  const StatusButton({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.15,
      width: size.width * 0.35,
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(3, 3),
          ),
          BoxShadow(
            color: Colors.white,
            blurRadius: 0,
            offset: Offset(-3, -3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.rss_feed,
                  size: 55,
                  color: Colors.grey.shade400,
                ),
                StatusButton(size: size,),
              ],
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Text(
              'SENSORS',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
            Text(
              'ON',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightGreen),
            ),
          ],
        ),
      ),
    );
  }
}