import 'package:flutter/material.dart';

class DoaaAudio extends StatelessWidget {
  const DoaaAudio(
      {super.key,
      required this.doaa,
      required this.onpress,
      required this.icon});
  final String doaa;
  final Function() onpress;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                doaa,
                style: const TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: IconButton(iconSize: 30, onPressed: onpress, icon: icon),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Divider(
          thickness: 1,
        ),
        SizedBox(
          height: 8,
        ),
      ],
    );
  }
}
