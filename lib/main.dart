import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();
  void playSound(int soundNumber) {
    player.play('note$soundNumber.wav');
  }

  Widget buildKey(Color color, int soundNumber, String soundText) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(soundText),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(Colors.red, 1, '도'),
              buildKey(Colors.orange, 2, '레'),
              buildKey(Colors.yellow, 3, '미'),
              buildKey(Colors.green, 4, '파'),
              buildKey(Colors.blue, 5, '솔'),
              buildKey(Colors.indigo, 6, '라'),
              buildKey(Colors.purple, 7, '시'),
            ],
          ),
        ),
      ),
    );
  }
}
