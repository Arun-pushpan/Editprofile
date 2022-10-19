import 'package:flutter/material.dart';
class Stacks extends StatefulWidget {
  const Stacks({Key? key,required this.title}) : super(key: key);
final String title;
  @override
  State<Stacks> createState() => _StacksState();
}

class _StacksState extends State<Stacks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SizedBox(
        width: 400,
        height: 400,
        child: Center(
          child: Stack(
            fit: StackFit.expand,
            clipBehavior: Clip.antiAliasWithSaveLayer,

            children: <Widget>[
              Container(
                width: 300,
                height: 300,
                color: Colors.yellowAccent,
              ), //Container
              Positioned(
                top: 100,
                left: 80,
                child: Container(
                  width: 250,
                  height: 250,
                  color: Colors.blueAccent,
                ),
              ), //Container
              Positioned(
                left: 20,
                top: 20,
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.redAccent,
                ),
              ),
              Positioned(
                top: 100,
                left: 80,
                child: Container(
                  width: 150,
                  height: 150,
                  color: Colors.indigo,
                ),
              ),
              Positioned(
                top: 100,
                left: 80,
                child: Container(
                  width: 10,
                  height: 10,
                  color: Colors.greenAccent,
                ),
              ),
          Positioned(
            top: 100,
            left: 80,
            child: Container(
              width: 120,
              height: 120,
              color: Colors.white,
            ),//Container//Container

          ),
          Positioned(
            top: 100,
            left: 80,
            child: Container(
              width: 80,
              height: 80,
              color: Colors.black,
            ),
          ),//Container
            ],

            //<Widget>[]
          ), //Stack
        ), //Center
      ), //SizedBox
    );
  }
}


