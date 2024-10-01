import 'package:azkar/category/adeia.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class AdeiaAudios extends StatefulWidget {
  const AdeiaAudios({super.key});

  @override
  State<AdeiaAudios> createState() => _AdeiaAudiosState();
}

class _AdeiaAudiosState extends State<AdeiaAudios> {
  final player = AudioPlayer();
  bool ismuted = false;
  String path = 'audios/audio1.mp3';

  IconData btnIcon1 = Icons.play_arrow;
  IconData btnIcon2 = Icons.play_arrow;
  IconData btnIcon3 = Icons.play_arrow;
  IconData btnIcon4 = Icons.play_arrow;
  IconData btnIcon5 = Icons.play_arrow;
  IconData btnIcon6 = Icons.play_arrow;
  IconData btnIcon7 = Icons.play_arrow;
  IconData btnIcon8 = Icons.play_arrow;

  Future<void> PlaySound(String Patht) async {
    //String audiopath = 'audios/audio1.mp3';
    path = Patht;
    await player.play(AssetSource(path));
    //path = audiopath;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xff9E9E9E), // Container background color
      ),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          DoaaAudio(
            doaa: 'دعاء 1',
            icon: Icon(btnIcon1),
            onpress: () async {
              if (player.state == PlayerState.playing) {
                await player.pause();
                setState(() {
                  btnIcon1 = Icons.play_arrow;
                });
              } else {
                PlaySound('audios/audio1.mp3');
                setState(() {
                  btnIcon1 = Icons.pause;
                  btnIcon2 = Icons.play_arrow;
                  btnIcon3 = Icons.play_arrow;
                  btnIcon4 = Icons.play_arrow;
                  btnIcon5 = Icons.play_arrow;
                  btnIcon6 = Icons.play_arrow;
                  btnIcon7 = Icons.play_arrow;
                  btnIcon8 = Icons.play_arrow;
                });
              }
            },
          ),

          DoaaAudio(
            doaa: 'دعاء 2',
            icon: Icon(btnIcon3),
            onpress: () async {
              if (player.state == PlayerState.playing) {
                await player.pause();
                setState(() {
                  btnIcon3 = Icons.play_arrow;
                });
              } else {
                PlaySound('audios/audio3.mp3');
                setState(() {
                  btnIcon3 = Icons.pause;
                  btnIcon2 = Icons.play_arrow;
                  btnIcon1 = Icons.play_arrow;
                  btnIcon4 = Icons.play_arrow;
                  btnIcon5 = Icons.play_arrow;
                  btnIcon6 = Icons.play_arrow;
                  btnIcon7 = Icons.play_arrow;
                  btnIcon8 = Icons.play_arrow;
                });
              }
            },
          ),
          DoaaAudio(
            doaa: 'دعاء 3',
            icon: Icon(btnIcon4),
            onpress: () async {
              if (player.state == PlayerState.playing) {
                await player.pause();
                setState(() {
                  btnIcon4 = Icons.play_arrow;
                });
              } else {
                PlaySound('audios/audio4.mp3');
                setState(() {
                  btnIcon4 = Icons.pause;
                  btnIcon2 = Icons.play_arrow;
                  btnIcon3 = Icons.play_arrow;
                  btnIcon1 = Icons.play_arrow;
                  btnIcon5 = Icons.play_arrow;
                  btnIcon6 = Icons.play_arrow;
                  btnIcon7 = Icons.play_arrow;
                  btnIcon8 = Icons.play_arrow;
                });
              }
            },
          ),

          DoaaAudio(
            doaa: 'دعاء 4',
            icon: Icon(btnIcon6),
            onpress: () async {
              if (player.state == PlayerState.playing) {
                await player.pause();
                setState(() {
                  btnIcon6 = Icons.play_arrow;
                });
              } else {
                PlaySound('audios/audio6.mp3');
                setState(() {
                  btnIcon6 = Icons.pause;
                  btnIcon2 = Icons.play_arrow;
                  btnIcon3 = Icons.play_arrow;
                  btnIcon4 = Icons.play_arrow;
                  btnIcon5 = Icons.play_arrow;
                  btnIcon1 = Icons.play_arrow;
                  btnIcon7 = Icons.play_arrow;
                  btnIcon8 = Icons.play_arrow;
                });
              }
            },
          ),
          DoaaAudio(
            doaa: 'دعاء 5',
            icon: Icon(btnIcon7),
            onpress: () async {
              if (player.state == PlayerState.playing) {
                await player.pause();
                setState(() {
                  btnIcon7 = Icons.play_arrow;
                });
              } else {
                PlaySound('audios/audio7.mp3');
                setState(() {
                  btnIcon7 = Icons.pause;
                  btnIcon2 = Icons.play_arrow;
                  btnIcon3 = Icons.play_arrow;
                  btnIcon4 = Icons.play_arrow;
                  btnIcon5 = Icons.play_arrow;
                  btnIcon6 = Icons.play_arrow;
                  btnIcon1 = Icons.play_arrow;
                  btnIcon8 = Icons.play_arrow;
                });
              }
            },
          ),
          DoaaAudio(
            doaa: 'دعاء 6',
            icon: Icon(btnIcon8),
            onpress: () async {
              if (player.state == PlayerState.playing) {
                await player.pause();
                setState(() {
                  btnIcon8 = Icons.play_arrow;
                });
              } else {
                PlaySound('audios/audio8.mp3');
                setState(() {
                  btnIcon8 = Icons.pause;
                  btnIcon2 = Icons.play_arrow;
                  btnIcon3 = Icons.play_arrow;
                  btnIcon4 = Icons.play_arrow;
                  btnIcon5 = Icons.play_arrow;
                  btnIcon6 = Icons.play_arrow;
                  btnIcon7 = Icons.play_arrow;
                  btnIcon1 = Icons.play_arrow;
                });
              }
            },
          ),

          ///
          DoaaAudio(
            doaa: 'دعاء الذهاب الى المسجد',
            icon: Icon(btnIcon2),
            onpress: () async {
              if (player.state == PlayerState.playing) {
                await player.pause();
                setState(() {
                  btnIcon2 = Icons.play_arrow;
                });
              } else {
                PlaySound('audios/audio2.mp3');
                setState(() {
                  btnIcon2 = Icons.pause;
                  btnIcon1 = Icons.play_arrow;
                  btnIcon3 = Icons.play_arrow;
                  btnIcon4 = Icons.play_arrow;
                  btnIcon5 = Icons.play_arrow;
                  btnIcon6 = Icons.play_arrow;
                  btnIcon7 = Icons.play_arrow;
                  btnIcon8 = Icons.play_arrow;
                });
              }
            },
          ),
          DoaaAudio(
            doaa: 'دعاء الخروج من المنزل',
            icon: Icon(btnIcon5),
            onpress: () async {
              if (player.state == PlayerState.playing) {
                await player.pause();
                setState(() {
                  btnIcon5 = Icons.play_arrow;
                });
              } else {
                PlaySound('audios/audio5.mp3');
                setState(() {
                  btnIcon5 = Icons.pause;
                  btnIcon2 = Icons.play_arrow;
                  btnIcon3 = Icons.play_arrow;
                  btnIcon4 = Icons.play_arrow;
                  btnIcon1 = Icons.play_arrow;
                  btnIcon6 = Icons.play_arrow;
                  btnIcon7 = Icons.play_arrow;
                  btnIcon8 = Icons.play_arrow;
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
