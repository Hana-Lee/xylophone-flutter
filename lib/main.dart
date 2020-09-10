import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();
  void playSound(int soundNumber) {
    player.play('note$soundNumber.wav');
  }

  Widget buildKey({Color color, int soundNumber, String soundText}) {
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
              buildKey(color: Colors.red, soundNumber: 1, soundText: '도'),
              buildKey(color: Colors.orange, soundNumber: 2, soundText: '레'),
              buildKey(color: Colors.yellow, soundNumber: 3, soundText: '미'),
              buildKey(color: Colors.green, soundNumber: 4, soundText: '파'),
              buildKey(color: Colors.blue, soundNumber: 5, soundText: '솔'),
              buildKey(color: Colors.indigo, soundNumber: 6, soundText: '라'),
              buildKey(color: Colors.purple, soundNumber: 7, soundText: '시'),
            ],
          ),
        ),
      ),
    );
  }
}
