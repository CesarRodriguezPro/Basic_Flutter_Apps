import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// this part is init by taping stless
// help in creating apps faster
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                color: Colors.red,
                width: 100,
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      color: Colors.yellow,
                      width: 100,
                      height: 100,
                    ),
                    Container(
                      color: Colors.yellowAccent[700],
                      width: 100,
                      height: 100,
                    ),
                  ]),
              Container(
                color: Colors.blue,
                width: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}
