import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'cmToFts.dart';

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
  double height = 169.164;
  int weight = 60;
  int age = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI CALCULATOR'),
      centerTitle: true,),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
              cardWidget:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('HEIGHT', style: klabelTextStyle,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children:[
                    Text(cmToFeetCalculation(height)[0], style: kNumberTextStyle),
                    Text('Fts', style:klabelTextStyle ,),
                  ],
                  ),
                  SliderTheme(
                    data:SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor:Color(0xFF8d8e98) ,
                      thumbColor:Color(0xFFEB1555),
                      overlayColor:Color(0x29EB1555),
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius:15.0),
                      overlayShape:RoundSliderOverlayShape(overlayRadius: 30),
                    ),
                    child: Slider(
                        value: height,
                        min: 120.0,
                        max: 220.0,
                        onChanged: (double newValue){
                          setState(() {
                            height = newValue;
                          });
                        },
                    ),
                  )
                ],
              ),
              colour: kActiveCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(colour: kActiveCardColor,
                  cardWidget: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('WEIGHT', style: klabelTextStyle,),
                      Text(weight.toString(), style:kNumberTextStyle ,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(icon:FontAwesomeIcons.minus, onPress: (){
                            setState(() {
                              weight--;
                            });
                          },),
                          SizedBox(width: 10,),
                          RoundIconButton(icon:FontAwesomeIcons.plus, onPress: (){
                            setState(() {
                              weight++;
                            });
                          }),
                        ],
                      )
                    ],
                  ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                      colour:kActiveCardColor,
                    cardWidget:  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('AGE', style: klabelTextStyle,),
                        Text(age.toString(), style:kNumberTextStyle ,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(icon:FontAwesomeIcons.minus, onPress: (){
                              setState(() {
                                age--;
                              });
                            },),
                            SizedBox(width: 10,),
                            RoundIconButton(icon:FontAwesomeIcons.plus, onPress: (){
                              setState(() {
                                age++;
                              });
                            }),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: kButtonContainerColor,
            width: double.infinity,
            height: 50.0,
            child:Center(child: Text('CALCULATE', style: kLargeButtonTextStyle,)),
          ),
        ],
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




