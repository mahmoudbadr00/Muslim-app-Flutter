import 'package:azkar/category/adeia_audios.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class AdeiaPage extends StatefulWidget {
  const AdeiaPage({super.key});

  @override
  State<AdeiaPage> createState() => _AdeiaPageState();
}

class _AdeiaPageState extends State<AdeiaPage> {
  final player = AudioPlayer();
  bool ismuted = false;
  String path = 'audios/audio1.mp3';

  /*IconData btnIcon1 = Icons.play_arrow;
  IconData btnIcon2 = Icons.play_arrow;
  IconData btnIcon3 = Icons.play_arrow;
  IconData btnIcon4 = Icons.play_arrow;
  IconData btnIcon5 = Icons.play_arrow;
  IconData btnIcon6 = Icons.play_arrow;
  IconData btnIcon7 = Icons.play_arrow;
  IconData btnIcon8 = Icons.play_arrow;*/

  Future<void> PlaySound(String Patht) async {
    //String audiopath = 'audios/audio1.mp3';
    path = Patht;
    await player.play(AssetSource(path));
    //path = audiopath;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 169, 221, 245),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(
                height: 70,
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                width: double.infinity,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xff9E9E9E), // Container background color
                ),
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.music_note,
                      size: 70,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'أدعية مختارة',
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            SliverToBoxAdapter(child: AdeiaAudios()),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 10,
              ),
            ),
            SliverToBoxAdapter(
              child: IconButton(
                onPressed: () {
                  setState(() {
                    if (ismuted) {
                      player.setVolume(1.0);
                    } else {
                      player.setVolume(0.0);
                    }
                    ismuted = !ismuted;
                  });
                },
                icon: Icon(ismuted ? Icons.music_note : Icons.music_off),
                iconSize: 35,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
