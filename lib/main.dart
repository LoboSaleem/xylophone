import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(xylophoneApp());

class xylophoneApp extends StatelessWidget {
  static AudioCache player = AudioCache();
  const xylophoneApp({Key? key}) : super(key: key);
  void palySound(int notNum) {
    player.play('note$notNum.wav');
  }

  Expanded creKey(Color color, int notNum) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          palySound(notNum);
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Paly Notes'),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              creKey(Colors.red, 1),
              creKey(Colors.white, 2),
              creKey(Colors.black, 3),
              creKey(Colors.green, 4),
              creKey(Colors.teal, 5),
              creKey(Colors.blue, 6),
              creKey(Colors.yellow, 7),
            ],
          ),
        ),
      ),
    );
  }
}
