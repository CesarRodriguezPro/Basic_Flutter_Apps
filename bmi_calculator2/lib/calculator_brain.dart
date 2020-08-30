import 'dart:math';
import 'components/cmToFts.dart';


void main(){
  CalculatorBrain calc = CalculatorBrain(height: 180, weight: 180);
  calc.calculateBMI();
  calc.getResult();
}

class CalculatorBrain{
  CalculatorBrain({this.height, this.weight});
  final double height;
  final int weight;
  double _bmi;

  String calculateBMI() {
    final String heightInFeet = cmToFeetCalculation(height);
    final List<String> valuesSeparated = heightInFeet.split(',');
    final double feet = double.parse(valuesSeparated[0]);
    final double inches = double.parse(valuesSeparated[1]);
    final totalInInches = (feet * 12) + inches;
    _bmi = (weight * 703) / pow(totalInInches, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    print(_bmi);
    if(_bmi >= 25){
      return 'Overweight';
    }else if(_bmi > 18.5){
      return 'Normal';
    }else{
      return 'Underweight';
    }
  }

  String getInterpretation(){
    if(_bmi >= 25){
      return 'You have a higher that normal body Weight. Try to exercise more.';
    }else if(_bmi > 18.5){
      return 'You have a normal body weight. Good job!';
    }else{
      return 'You have a lower than normal body weight. you can eat a bit more.';
    }
  }
}