import 'package:azkar/adeia_page.dart';
import 'package:azkar/asmaa_page.dart';
import 'package:azkar/category/home_circleavatar.dart';
import 'package:azkar/qoran_page.dart';
import 'package:azkar/tsabeh_page.dart';
import 'package:flutter/material.dart';

class MainPages extends StatelessWidget {
  const MainPages({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          Homecategories(
            img: 'assets/images/adeia.jpg',
            text: 'أدعية',
            ontap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AdeiaPage()));
            },
          ),
          Homecategories(
            img: 'assets/images/sebha.jpg',
            text: 'سبحة',
            ontap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Tsabeh()));
            },
          ),
          Homecategories(
            img: 'assets/images/asmaa.png',
            text: 'أسماء الله الحسنى',
            ontap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AsmaaPage()));
            },
          ),
          Homecategories(
            img: 'assets/images/qoran.png',
            text: 'القران الكريم',
            ontap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => QoranPage()));
            },
          ),
        ],
      ),
    );
  }
}
