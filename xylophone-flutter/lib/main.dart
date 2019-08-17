import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int toneNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(toneNumber);
        },
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
              buildKey(toneNumber: 1, color: Colors.red),
              buildKey(toneNumber: 2, color: Colors.orange),
              buildKey(toneNumber: 3, color: Colors.yellow),
              buildKey(toneNumber: 4, color: Colors.green),
              buildKey(toneNumber: 5, color: Colors.teal),
              buildKey(toneNumber: 6, color: Colors.blue),
              buildKey(toneNumber: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
