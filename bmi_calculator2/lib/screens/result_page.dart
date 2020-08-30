import 'package:flutter/material.dart';
import '../components/constants.dart';
import '../components/reusable_card.dart';
import '../components/buttons.dart';
import '../calculator_brain.dart';



class ResultsPage extends StatelessWidget {
  ResultsPage({@required this.bmiData});
  final CalculatorBrain bmiData;

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI CALCULATOR'),centerTitle:true ,),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        Container(

          child: Text('Your Result',style:TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w900,
          ),
          ),
        ),
        Expanded(
            child: ReusableCard(
        colour: kActiveCardColor,
              cardWidget: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(bmiData.getResult().toUpperCase(), style: kResultColorText,),
                    Text(bmiData.calculateBMI(), style: kResultNumber),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Text(bmiData.getInterpretation(),
                        style:kResultDescriptionText ,
                        textAlign: TextAlign.center,),
                    ),
                  ],
                ),
            ),
          ),
          BottonButton(buttonTitle: 'RE-CALCULATE',onTap: (){
            Navigator.pop(context);
          },)
      ],)
    );
  }
}
