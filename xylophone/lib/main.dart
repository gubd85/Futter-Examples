import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          body: SafeArea(child: Music()),
          backgroundColor: Colors.black,
        ),
      ),
    );

class Music extends StatelessWidget {
  const Music({Key key}) : super(key: key);

  void playSound(int soundNumber) {
    final AudioCache player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buttonByKey({int soundNumber, Color colorName}) {
    
    return Expanded(
      child: FlatButton(
        color: colorName,
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
            buttonByKey(soundNumber: 1,colorName: Colors.teal),
            buttonByKey(soundNumber: 2,colorName: Colors.red),
            buttonByKey(soundNumber: 3,colorName: Colors.yellow),
            buttonByKey(soundNumber: 4,colorName: Colors.white),
            buttonByKey(soundNumber: 5,colorName: Colors.orange),
            buttonByKey(soundNumber: 6,colorName: Colors.blue),
            buttonByKey(soundNumber: 7,colorName: Colors.green),
        ],
      ),
    );
  }
}
