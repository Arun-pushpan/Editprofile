import 'package:flutter/material.dart';
class Media extends StatefulWidget {
  const Media({Key? key}) : super(key: key);

  @override
  State<Media> createState() => _MediaState();
}

class _MediaState extends State<Media> {
  var size,height,width;
  @override
  Widget build(BuildContext context) {
    size=MediaQuery.of(context).size; //getting the size of the window
    height=size.height;
    width=size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Arun"),
        backgroundColor:Color.fromRGBO(2, 10, 5, 2.0),
      ),
      body: Container(
        color: Colors.lightBlueAccent,
        height:height/2,
        width: width/2,
      ),
    );
      
  }
}
