import 'package:flutter/material.dart';

import 'session1.dart';

class PageBox extends StatelessWidget {
  PageBoxData item;
  //tttttt
  PageBox({required this.item});

  @override
  Widget build(BuildContext context) {
    return  Stack(
          alignment: Alignment.bottomRight ,
          children: [
            Container(
              color: Colors.black,
                child: Image.asset(item.imagepath,fit: BoxFit.fitHeight,height: double.infinity,)),
            Container(

                margin: EdgeInsets.all(12),
                padding: EdgeInsets.symmetric(horizontal:16 ,vertical: 4),
                color: Color.fromRGBO(131, 41, 182, 0.5),

                child: Text(
                item.imagetitle,
                  style: TextStyle(color: Colors.white,fontSize: 20),))
          ],

    );
  }
}
