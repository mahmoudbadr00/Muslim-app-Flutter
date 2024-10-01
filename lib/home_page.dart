import 'package:azkar/category/mainpagescategory.dart';
import 'package:azkar/category/mainprays.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _prayerName = '';
  var curentTime;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(const Duration(seconds: 1), (timer) {
      updateTime();
    });
  }

  void updateTime() {
    var now = DateTime.now();
    var format = DateFormat.jms().format(now);
    setState(() {
      curentTime = format.toString();
      _prayerName = getPrayerName(now);
    });
  }

  String getPrayerName(DateTime currentTime) {
    // Define prayer times
    final fajrStart =
        DateTime(currentTime.year, currentTime.month, currentTime.day, 4, 21);
    final sunrise =
        DateTime(currentTime.year, currentTime.month, currentTime.day, 5, 51);
    final dhuhrStart =
        DateTime(currentTime.year, currentTime.month, currentTime.day, 12, 0);
    final asrStart =
        DateTime(currentTime.year, currentTime.month, currentTime.day, 15, 31);
    final maghribStart =
        DateTime(currentTime.year, currentTime.month, currentTime.day, 18, 12);
    final ishaStart =
        DateTime(currentTime.year, currentTime.month, currentTime.day, 19, 30);

    if (currentTime.isAfter(ishaStart) || currentTime.isBefore(fajrStart)) {
      return 'الفجر';
    } else if (currentTime.isAfter(fajrStart) &&
        currentTime.isBefore(sunrise)) {
      return 'الشروق';
    } else if (currentTime.isAfter(sunrise) &&
        currentTime.isBefore(dhuhrStart)) {
      return 'الظهر';
    } else if (currentTime.isAfter(dhuhrStart) &&
        currentTime.isBefore(asrStart)) {
      return 'العصر';
    } else if (currentTime.isAfter(asrStart) &&
        currentTime.isBefore(maghribStart)) {
      return 'المغرب';
    } else {
      return 'العشاء';
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/home.jpeg'),
                  fit: BoxFit.cover)),
          child: Center(
            child: CustomScrollView(
              //mainAxisAlignment: MainAxisAlignment.center,
              slivers: [
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 65,
                  ),
                ),
                SliverToBoxAdapter(
                  child: Center(
                    child: Text(
                      '$curentTime',
                      style: const TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Center(
                    child: Text(
                      _prayerName,
                      style: const TextStyle(fontSize: 25, color: Colors.grey),
                    ),
                  ),
                ),
                const SliverToBoxAdapter(child: Mainprays()),
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 30,
                  ),
                ),
                const SliverToBoxAdapter(child: MainPages()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
