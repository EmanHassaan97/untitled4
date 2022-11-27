import 'package:flutter/material.dart';
import 'package:untitled4/pageBox.dart';
import 'package:untitled4/page_tite.dart';

List<PageBoxData> items = [
  PageBoxData(imagepath: "assets/images/car.jpg", imagetitle: "car"),
  PageBoxData(imagepath: "assets/images/ball.jpeg", imagetitle: "ball"),
  PageBoxData(imagepath: "assets/images/car.jpg", imagetitle: "car"),
  PageBoxData(imagepath: "assets/images/ball.jpeg", imagetitle: "ball"),
  PageBoxData(imagepath: "assets/images/car.jpg", imagetitle: "car"),
  PageBoxData(imagepath: "assets/images/ball.jpeg", imagetitle: "ball"),
  PageBoxData(imagepath: "assets/images/car.jpg", imagetitle: "car"),
  PageBoxData(imagepath: "assets/images/ball.jpeg", imagetitle: "ball"),
];

class Session1 extends StatelessWidget {
  static String routeName = "session1";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              PageTitle(title: "news"),
              SizedBox(width: 4,),
              PageTitle(title: "magazine")
            ],
          ),
          Expanded(
            child:GridView. builder(
                itemCount: items.length,
               // scrollDirection: Axis.horizontal,
                itemBuilder:(context,index) => PageBox(item: items[index]),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
                childAspectRatio: 1.4,
                mainAxisSpacing: 10,
                crossAxisSpacing: 4
              ) ,

            ),
          )
        ],
      ),

    );
  }
}
Widget myItemBuilder(BuildContext context,int index){
print(index);
  return PageBox(item:items[index]);
}
//model class
class PageBoxData {
  String imagepath;
  String imagetitle;
  PageBoxData({required this.imagepath,required this.imagetitle});
}