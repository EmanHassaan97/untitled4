import 'package:flutter/material.dart';
import 'package:untitled4/componants/calculator_button.dart';
class CalculatorScreen2 extends StatefulWidget {
  static String routeName = "calculator2";
  const CalculatorScreen2({Key? key}) : super(key: key);

  @override
  State<CalculatorScreen2> createState() => _CalculatorScreen2State();
}

class _CalculatorScreen2State extends State<CalculatorScreen2> {
  String resultText ="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Column(
        children: [
          
          Expanded(child: Center(child:
          Container(
            width: double.infinity,
              margin: EdgeInsets.only(left: 18),
              child: Text(resultText,style: TextStyle(fontSize: 32,fontWeight:FontWeight.bold),)))),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
               CalculatorButton(digit: "7",onClik: onDigitClick,),
               CalculatorButton(digit: "8",onClik: onDigitClick,),
                
                CalculatorButton(digit: "9",onClik: onDigitClick,),
                CalculatorButton(digit: "+",onClik: onOperatorClick,),

              ],
            ),
          ),
          
          Expanded(

            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorButton(digit: "4",onClik: onDigitClick,),

               CalculatorButton(digit: "5",onClik: onDigitClick,),

                CalculatorButton(digit: "6",onClik: onDigitClick,),
                
                  CalculatorButton(digit: "-",onClik: onOperatorClick,),

              ],
            ),
          ),
          
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                
               CalculatorButton(digit: "1",onClik: onDigitClick,),
                CalculatorButton(digit: "2",onClik: onDigitClick,),
                
               CalculatorButton(digit: "3",onClik: onDigitClick,),
                
                CalculatorButton(digit: "*",onClik: onOperatorClick,),

              ],
            ),
          ),
          
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                
                CalculatorButton(digit: ".",onClik: onDigitClick,),
                
                CalculatorButton(digit: "0",onClik: onDigitClick,),
                
                CalculatorButton(digit: "=",onClik: onDigitClick,),
                CalculatorButton(digit: "/",onClik: onOperatorClick,),

              ],
            ),
          ),
        ],
      ),
    );
  }
  onDigitClick(String digit){
    setState((){
      resultText+=digit;
    });


print("button clicked $digit");
  }
  onOperatorClick(String onOPeratorClick){

  }
}
