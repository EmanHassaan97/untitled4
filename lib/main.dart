import 'package:flutter/material.dart';
import 'package:untitled4/calculator_screen.dart';
import 'package:untitled4/calculator_screen2.dart';
import 'package:untitled4/practice_visablity.dart';
import 'package:untitled4/session1.dart';

void main() {
runApp(MaterialApp(
  title: "this is my frist app",
  routes: {
Session1.routeName:(_)=>Session1() ,
CalculatorScreen.routeName:(_)=>CalculatorScreen(),
CalculatorScreen2.routeName:(_)=>CalculatorScreen2(),
    Practicev.routeName:(_)=>Practicev()
  },
  initialRoute:Practicev.routeName,
));
}

