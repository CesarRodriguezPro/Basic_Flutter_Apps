import 'package:flutter/material.dart';
import './constants.dart';


class BottonButton extends StatelessWidget {
  BottonButton({@required this.onTap, @required this.buttonTitle });
  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(bottom: 20),
        color: kButtonContainerColor,
        width: double.infinity,
        height: 80.0,
        child:Center(
            child: Text(buttonTitle,
              style: kLargeButtonTextStyle,
            )
        ),
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {

  RoundIconButton({@required this.icon,@required this.onPress});
  final IconData icon;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPress,
      shape: CircleBorder(),
      fillColor:Color(0xFF4C4F5E),
      constraints:  BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
    );
  }
}


