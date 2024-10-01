import 'package:flutter/material.dart';

class Tsabeh extends StatefulWidget {
  const Tsabeh({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TsabehState createState() => _TsabehState();
}

class _TsabehState extends State<Tsabeh> {
  int _counter = 0;
  int _current = 0; // تم تغيير القيمة الابتدائية للعداد
  int _step = 0;
  int _total = 0;
  List<String> tasbeh = [
    "سُبْحَانَ اللَّهِ",
    "سُبْحَانَ اللَّهِ وَبِحَمْدِهِ",
    "سُبْحَانَ اللَّهِ وَالْحَمْدُ لِلَّهِ",
    "سُبْحَانَ اللهِ العَظِيمِ وَبِحَمْدِهِ",
    "سُبْحَانَ اللَّهِ وَبِحَمْدِهِ ، سُبْحَانَ اللَّهِ الْعَظِيمِ",
    "لَا إلَه إلّا اللهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلُّ شَيْءِ قَدِيرِ",
    "لا حَوْلَ وَلا قُوَّةَ إِلا بِاللَّهِ ",
    "الْحَمْدُ للّهِ رَبِّ الْعَالَمِينَ",
    "الْلَّهُم صَلِّ وَسَلِم وَبَارِك عَلَى سَيِّدِنَا مُحَمَّد",
    "أستغفر الله ",
    "سُبْحَانَ الْلَّهِ، وَالْحَمْدُ لِلَّهِ، وَلَا إِلَهَ إِلَّا الْلَّهُ، وَالْلَّهُ أَكْبَرُ",
    "لَا إِلَهَ إِلَّا اللَّهُ",
    "الْلَّهُ أَكْبَرُ",
    "سُبْحَانَ اللَّهِ ، وَالْحَمْدُ لِلَّهِ ، وَلا إِلَهَ إِلا اللَّهُ ، وَاللَّهُ أَكْبَرُ ، اللَّهُمَّ اغْفِرْ لِي ، اللَّهُمَّ ارْحَمْنِي ، اللَّهُمَّ ارْزُقْنِي.",
    "الْحَمْدُ لِلَّهِ حَمْدًا كَثِيرًا طَيِّبًا مُبَارَكًا فِيهِ",
    "اللَّهُ أَكْبَرُ كَبِيرًا ، وَالْحَمْدُ لِلَّهِ كَثِيرًا ، وَسُبْحَانَ اللَّهِ بُكْرَةً وَأَصِيلاً.",
    "اللَّهُمَّ صَلِّ عَلَى مُحَمَّدٍ وَعَلَى آلِ مُحَمَّدٍ كَمَا صَلَّيْتَ عَلَى إِبْرَاهِيمَ , وَعَلَى آلِ إِبْرَاهِيمَ إِنَّكَ حَمِيدٌ مَجِيدٌ , اللَّهُمَّ بَارِكْ عَلَى مُحَمَّدٍ وَعَلَى آلِ مُحَمَّدٍ كَمَا بَارَكْتَ عَلَى إِبْرَاهِيمَ وَعَلَى آلِ إِبْرَاهِيمَ إِنَّكَ حَمِيدٌ مَجِيدٌ.",
  ];

  // تغييرات الحالة لزيادة العداد
  void _incrementCounter() {
    setState(() {
      if (_current < 32) {
        _current++;
        _total++;
      } else {
        _current = 1;
      }
      if (_current % 32 == 0) {
        _step++;
      } else {}
    });
  }

  void _nextTasbeh() {
    setState(() {
      if (_counter < tasbeh.length - 1) {
        _counter++;
      } else {
        _counter = 0;
      }
    });
  }

  void _previousTasbeh() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      } else {
        _counter = tasbeh.length - 1;
      }
    });
  }

  void _resetCounter() {
    setState(() {
      _current = 0;
      _step = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 102, 203, 249),
      body: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Stack(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 200,
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 29, 29, 29)
                          .withOpacity(0.8),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return Center(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              right: 10.0,
                              left: 10.0,
                              bottom: 16.0,
                            ),
                            child: Text(
                              tasbeh[_counter],
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Positioned(
                    top: 0,
                    bottom: 0,
                    left: 0,
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        _previousTasbeh();
                      },
                    ),
                  ),
                  Positioned(
                    top: 0,
                    bottom: 0,
                    right: 0,
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        _nextTasbeh();
                      },
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 70),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    backgroundColor: Colors.white,
                    fixedSize: Size(120, 120)),
                onPressed: _incrementCounter,
                child: const Center(
                  child: Text(
                    "تسبيح",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Color.fromARGB(255, 5, 153, 221),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20), // إضافة مسافة بين الأزرار والعداد
              Text(
                '$_current / 32',
                style: const TextStyle(fontSize: 40), // تحديد حجم النص
              ),
              Text(
                '${_step == 0 ? '' : _step}',
                //'$_step',
                style: const TextStyle(
                    fontSize: 30, color: Color.fromARGB(255, 66, 66, 66)),
              ),
              const SizedBox(
                height: 80,
              ),
              Text(
                'total is $_total',
                //'$_step',
                style: const TextStyle(
                    fontSize: 30,
                    color: Color.fromARGB(255, 66, 66, 66)), // تحديد حجم النص
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                ),
                onPressed: _resetCounter,
                child: const Text(
                  'إعادة البدء',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
