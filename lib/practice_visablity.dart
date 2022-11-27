import 'package:flutter/material.dart';



class Practicev extends StatefulWidget {
  static String routeName ="visability1";

  @override
  State<Practicev> createState() => _PracticevState();
}

class _PracticevState extends State<Practicev> {
  bool isvisable= true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Visability"),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
   Visibility(
     visible: isvisable,
     child: Container(
  color: Colors.blue,
  width: 300,
  height: 100,
),

     replacement:  Container(
       color: Colors.transparent,
       width: 300,
       height: 100,
     ),
   ),
            Switch(value: isvisable,onChanged: (value){
              setState(() {
                isvisable=value;
              });
            },)
          ],
        ),
      ) ,
    );
  }
}
