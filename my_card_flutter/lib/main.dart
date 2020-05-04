import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
  
class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        body: SafeArea(
          child: Container(         
            color: Colors.white,   
              child: Text('My card'), 
              margin: EdgeInsets.only(left:20, top: 30),           
              height: 200.0,
              width: 200.0,  
              padding: EdgeInsets.all(20.0),
            ),
          ),
        ),
      
    );
  }
}
