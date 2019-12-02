import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Xylophone'),
        ),
        body: play(),
      ),
    );
  }
}

class play extends StatefulWidget {
  @override
  _playState createState() => _playState();
}

class _playState extends State<play> {
  void playsound(int number) {
    final player = AudioCache();
    print(number);
    player.play('note$number.wav');
  }

  Expanded buildkey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playsound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildkey(color: Colors.red, soundNumber: 7),
          buildkey(color: Colors.orange, soundNumber: 6),
          buildkey(color: Colors.yellow, soundNumber: 5),
          buildkey(color: Colors.green, soundNumber: 4),
          buildkey(color: Colors.blue, soundNumber: 3),
          buildkey(color: Colors.indigo, soundNumber: 2),
          buildkey(color: Colors.purple, soundNumber: 1),
        ],
      ),
    );
  }
}
