import 'package:azkar/category/prays.dart';
import 'package:flutter/material.dart';

class Mainprays extends StatelessWidget {
  const Mainprays({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xff9D692F), // Container background color
      ),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: const [
          TheRow(
            pray: 'الفجر',
            time: '4:17 AM',
          ),
          TheRow(
            pray: 'الشروق',
            time: '5:45 AM',
          ),
          TheRow(
            pray: 'الظهر',
            time: '11:59 PM',
          ),
          TheRow(
            pray: 'العصر',
            time: '3:31 pM',
          ),
          TheRow(
            pray: 'المغرب',
            time: '6:14 pM',
          ),
          TheRow(
            pray: 'العشاء',
            time: '7:33 PM',
          ),
        ],
      ),
    );
  }
}
