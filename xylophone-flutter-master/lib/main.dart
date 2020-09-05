import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Widget buildKey({int note, Color soundColor}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          final player = AudioCache();
          player.play('note$note.wav');
        },
        focusColor: Colors.deepPurple,
        child: null,
        color: random_color(),
      ),
    );
  }

  Color random_color() {
    return Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Text('Munku'),
        ),
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            FlatButton(
              onPressed: () {
                (context as Element).reassemble();
              },
              child: Text('Refresh..'),
            ),
            buildKey(note: 1, soundColor: Colors.red),
            buildKey(note: 2, soundColor: Colors.blue),
            buildKey(note: 3, soundColor: Colors.purple),
            buildKey(note: 4, soundColor: Colors.pink),
            buildKey(note: 5, soundColor: Colors.brown),
            buildKey(note: 6, soundColor: Colors.indigo),
            buildKey(note: 7, soundColor: Colors.cyan),
            buildKey(note: 1, soundColor: Colors.deepOrange),
          ],
        )),
      ),
    );
  }
}
