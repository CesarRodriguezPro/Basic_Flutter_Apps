import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var pictureNumber = 1;

  void changePicture() {
    setState(() {
      pictureNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[300],
        appBar: AppBar(
          backgroundColor: Colors.blue[800],
          title: Text('Lucky Number 8'),
        ),
        body: Center(
          child: FlatButton(
            onPressed: () {
              changePicture();
            },
            child: Image.asset('images/ball$pictureNumber.png'),
          ),
        ),
      ),
    );
  }
}
