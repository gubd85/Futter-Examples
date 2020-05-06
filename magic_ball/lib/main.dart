import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue.shade800,
            title: Text('Ask Me Anything'),
          ),
          body: MagicBall(),
          backgroundColor: Colors.blue,
        ),
      ),
    );

class MagicBall extends StatefulWidget {
  MagicBall({Key key}) : super(key: key);

  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {

  int ballNumber = 3;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      children: <Widget>[
        Expanded(
          child: FlatButton(
            child: Image.asset('images/ball$ballNumber.png'),
            onPressed: (){
              setState(() {
                ballNumber = Random().nextInt(5) + 1;  
              });
              

            },
          ),
        ),
      ],
    ));
  }
}
