import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}
class _InputPageState extends State<InputPage> {

  Color maleCardColor = kInActiveCardColor;
  Color femaleCardColor = kInActiveCardColor;
  Gender genderSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onPress:(){
                      setState(() {
                        genderSelected = Gender.male;
                      });
                    },
                      colour: genderSelected == Gender.male ? kActiveCardColor : kInActiveCardColor ,
                      cardWidget:GenderCard(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE'),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                          onPress:(){
                          setState(() {
                            genderSelected = Gender.female;
                          });
                        },
                    colour: genderSelected  == Gender.female ? kActiveCardColor : kInActiveCardColor,
                  cardWidget:GenderCard(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child:ReusableCard(

              colour: kActiveCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(colour: kActiveCardColor )
                ),
                Expanded(
                  child: ReusableCard(colour:kActiveCardColor ),
                ),
              ],
            ),
          ),
          Container(
            color: kButtonContainerColor,
            width: double.infinity,
            height: 80.0,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
    );
  }
}




