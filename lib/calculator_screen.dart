import 'package:flutter/material.dart';


class CalculatorScreen extends StatefulWidget {
  static String routeName  = "calculator";


  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  int counter =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
        
      ),
      body: Center(
        child: Text("$counter"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          setState(() {
            counter++;
          });

print(counter);
        },
      ),
    );
  }
}
