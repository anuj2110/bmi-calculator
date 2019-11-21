import 'dart:math';

import 'package:flutter/cupertino.dart';
class CalcBrain{

CalcBrain({this.height_,this.weight_});

 final int height_;
 final int weight_;
 double _bmi;


 String retBMI(){
   _bmi = weight_/pow(height_/100, 2);
   return _bmi.toStringAsFixed(1);
 }
 String retBMIResult(){
   if(_bmi >= 25)
   return "OverWeight";
   else if(_bmi < 18.5)
   return "UnderWeight";
   else
   return "Normal";
 }
String retInterpretation(){
  if(_bmi>=25)
   return "You Should Do Exercise";
   else if(_bmi<18)
   return "You Should Review Your Diet";
   else
   return "You Are Doing A Good Job";
}
}