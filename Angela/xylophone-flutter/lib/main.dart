import 'dart:ui';
import 'package:audioplayers/audioplayers.dart';

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

// import 'package:engli';
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(n) {
    final player = AudioPlayer();
    player.play('assets/note$n.wav');
  }

  Expanded builder({Color color, int n}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(n);
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              builder(color: Colors.red, n: 1),
              builder(color: Colors.black, n: 2),
              builder(color: Color.fromARGB(255, 89, 54, 244), n: 3),
              builder(color: Color.fromARGB(255, 17, 167, 37), n: 4),
              builder(color: Color.fromARGB(255, 124, 244, 54), n: 5),
              builder(color: Color.fromARGB(255, 244, 241, 54), n: 6),
              builder(color: Color.fromARGB(255, 17, 180, 180), n: 7),
            ],
          ),
        ),
      ),
    );
  }
}
