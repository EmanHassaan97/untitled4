import 'package:flutter/material.dart';
class CalculatorButton extends StatelessWidget {
  String digit;
  Function onClik;
  CalculatorButton({required this.digit,required this.onClik});
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: Container(
        margin: EdgeInsets.all(2),
        child: ElevatedButton(
            onPressed: (){
              onClik(digit);
            },
            child: Text("$digit",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)
        ),
      ),
    );
  }
}
