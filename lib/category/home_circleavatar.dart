import 'package:flutter/material.dart';

class Homecategories extends StatelessWidget {
  const Homecategories(
      {super.key, required this.img, required this.text, required this.ontap});
  final String img;
  final String text;
  final Function() ontap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Column(
        children: [
          GestureDetector(
            onTap: ontap,
            child: CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('$img'),
            ),
          ),
          Text(
            '$text',
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0xff9D692F)),
          ),
        ],
      ),
    );
  }
}
