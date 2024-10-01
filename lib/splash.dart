import 'package:azkar/home_page.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  Splashscreen({super.key});
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return HomePage();
      }));
    });
  }

  @override
  MaterialApp build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        backgroundColor: Color(0xff000000),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xff000000),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 90),
              child: Icon(
                Icons.book_online_outlined,
                size: 40,
              ),
            ),
          ],
          title: const Text(
            'Muslem app',
            style: TextStyle(
              fontSize: 20,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 130,
                child: CircleAvatar(
                  radius: 120,
                  backgroundColor: Color(0xfff3d177),
                  backgroundImage: AssetImage(
                    "assets/images/lllll.png",
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Azkar EL-Muslem',
                style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico',
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              CircularProgressIndicator(),
            ],
          ),
        ),
      ), //
    ); //MaterialApp
  }
}
