import 'package:measurements/measurements.dart';


String cmToFeetCalculation(double cm){
  Length cmHeight = Length.fromCentimetres(cm);
  var stringValueInFeet = cmHeight.inFeet.toString();
  var listOfValuesInDecimal = stringValueInFeet.split('.');

  // calculating inches from decimals
  var stringInches = listOfValuesInDecimal[1];
  var totalInches = double.parse("0.$stringInches")*12;
  var justInches = totalInches.toString().split('.');

  return "${listOfValuesInDecimal[0]},${justInches[0]}";
}