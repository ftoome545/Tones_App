import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MusicWidget());
}

class MusicWidget extends StatelessWidget {
  const MusicWidget({super.key});

  void playMusic(int musicNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('music-$musicNumber.mp3'));
  }

  Expanded myButton(int musicNumber, Color buttonColor, String buttonName) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 1.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.white,
          ),
          onPressed: () {
            playMusic(musicNumber);
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                Icon(
                  Icons.music_note,
                  color: buttonColor,
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  buttonName,
                  style: TextStyle(
                    color: buttonColor,
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 112, 226, 230),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 28, 145, 149),
          title: Text('Tones'),
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            myButton(1, Colors.blue,
                'Music 1'), //here I added a comma instead of a semicolon
            myButton(2, Colors.purple, 'Music 2'),
            myButton(3, Colors.blue, 'Music 3'),
            myButton(4, Colors.purple, 'Music 4'),
            myButton(5, Colors.blue, 'Music 5'),
            myButton(6, Colors.purple, 'Music 6'),
            myButton(7, Colors.blue, 'Music 7'),
          ],
        ),
      ),
    );
  }
}
