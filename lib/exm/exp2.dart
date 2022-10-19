import 'package:flutter/material.dart';
class Exp extends StatefulWidget {
  const Exp({Key? key}) : super(key: key);

  @override
  State<Exp> createState() => _ExpState();
}

class _ExpState extends State<Exp> {

  @override
  var size,height,width,orientation;
  Widget build(BuildContext context) {
    orientation=MediaQuery.of(context).orientation;// getting the orientation of the app
    size=MediaQuery.of(context).size;
    height=size.height;
    width=size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("My World"),
        backgroundColor: Colors.cyan,
      ),
      body:orientation==Orientation.portrait?Container(
        color: Colors.green,
        height: height,
        width: width,
      ):
          Container(

            height: height,
            width: width,
            color: Colors.red,

          )


    );
  }
}
