import 'package:measurements/measurements.dart';

List cmToFeetCalculation(double cm){
  Length cmHeight = Length.fromCentimetres(cm);
  var heightInFeet = cmHeight.inFeet;
  return [heightInFeet.toStringAsFixed(2), heightInFeet] ;
}