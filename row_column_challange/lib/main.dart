import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                color: Colors.red,
                height: double.infinity,
                width: 100.0,
              ),
              
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    
                    Container(
                      color: Colors.yellow,
                      height: 100.0,
                      width: 100.0,
                    ),
                    Container(
                      color: Colors.grey,
                      height: 100.0,
                      width: 100.0,
                    ),
                  ],
                ),
              
              Container(
                color: Colors.blue,
                height: double.infinity,
                width: 100.0,
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
