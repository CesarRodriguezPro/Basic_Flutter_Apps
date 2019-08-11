import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.black54,
          appBar: AppBar(
              title: Text('I Am Poor'),
              backgroundColor: Colors.blueGrey,
          ),
          body:Center(
            child: Image(
              image:AssetImage('images/losing.png')
          ),
          ),
        ),
      ),
  );
}


