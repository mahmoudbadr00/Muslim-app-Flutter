import 'package:flutter/material.dart';

class AsmaaCategory extends StatelessWidget {
  const AsmaaCategory({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerRight,
          height: 200,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              text,
              style: TextStyle(fontSize: 22),
              textAlign: TextAlign.center,
              textDirection: TextDirection.rtl,
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const Divider(
          thickness: 1,
        ),
        const SizedBox(
          height: 8,
        ),
      ],
    );
  }
}
