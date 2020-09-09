import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {

//  constructor
  ReusableCard({@required this.colour, this.cardWidget, this.onPress}); // this make require the plug in data
  final Color colour;
  final Widget cardWidget;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardWidget,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(blurRadius: 10, spreadRadius: 3)],
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}