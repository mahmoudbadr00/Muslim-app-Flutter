import 'package:flutter/material.dart';

class TheRow extends StatelessWidget {
  const TheRow({super.key, required this.pray, required this.time});
  final String pray;
  final String time;
  @override
  Widget build(BuildContext context) {
    return Row(
      //crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(
            '$time',
            style: TextStyle(
              fontSize: 35,
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(right: 8.0),
          child: Text(
            pray,
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
