import 'package:azkar/category/asmaa_category.dart';
import 'package:azkar/models/asmaa.dart';
import 'package:flutter/material.dart';

class AsmaaPage extends StatelessWidget {
  AsmaaPage({super.key});
  final List names = allahNames as List;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 102, 203, 249),
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(top: 16.0),
                child: Center(
                    child: Text(
                  'أسماء الله الحسنى',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                )),
              ),
            ),
            for (int i = 0; i <= 94; i++)
              SliverToBoxAdapter(child: AsmaaCategory(text: names[i])),
          ],
        ),
      ),
    );
  }
}
