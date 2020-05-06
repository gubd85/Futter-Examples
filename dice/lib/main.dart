import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
        backgroundColor: Colors.red,
      ),
    ),
  );
}


class DicePage extends StatefulWidget {
  DicePage({Key key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$leftDiceNumber.png'),
              onPressed: () {
                setState(() {
                  changeDiceNumber();
                });
                
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$rightDiceNumber.png'),
              onPressed: (){

                setState(() {
                  
                  changeDiceNumber();
                });
                
              },
            ),
          ),
        ],
      ),
    );
  }

  void changeDiceNumber(){

    leftDiceNumber = Random().nextInt(6) + 1 ;
    rightDiceNumber = Random().nextInt(6) + 1 ;

    print('Left button $leftDiceNumber');
    print('Right button $rightDiceNumber');
  }
}


