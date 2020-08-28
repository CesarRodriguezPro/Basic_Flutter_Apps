import 'package:measurements/measurements.dart';

String cmToFeetCalculation(double cm){
  Length cmHeight = Length.fromCentimetres(cm);
  var heightInFeet = cmHeight.inFeet;
  return heightInFeet.toStringAsFixed(1) ;
}