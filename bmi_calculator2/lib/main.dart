import 'package:flutter/material.dart';
import 'input_page.dart';
import 'result_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData.dark().copyWith(
          primaryColor: Color(0xff0A0E21),
          scaffoldBackgroundColor:  Color(0xff0A0E21),
      ),
     initialRoute: '/',
     routes: {
        '/': (context) => InputPage(),
       '/Result':(context) => ResultsPage(),
     },
    );
  }
}

