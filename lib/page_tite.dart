import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  String title;
   PageTitle( {required this.title});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12),
        color: Color.fromRGBO(131, 41, 182, 1.0),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style:TextStyle(
            color: Colors.white,
            fontSize: 24,

          ),),
      ),
    );
  }
}
