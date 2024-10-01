import 'package:azkar/category/qoran_listtile.dart';
import 'package:flutter/material.dart';

class QoranPage extends StatelessWidget {
  QoranPage({super.key});
  //final List names = allahNames as List;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 102, 203, 249),
        appBar: AppBar(
          title: Text('القران الكريم'),
          centerTitle: true,
        ),
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [SliverToBoxAdapter(child: QoranListtile())],
        ),
      ),
    );
  }
}
