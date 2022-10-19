import 'package:flutter/material.dart';
class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationState();
}

class _NotificationState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    bool forAndroid=false;
    return Scaffold(
        appBar: AppBar(
        flexibleSpace: Container(
        decoration: BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
        colors: <Color>[Colors.teal.shade900, Colors.black])),
    ),
    title: Text(
    " GEOGRAF",
    style: TextStyle(
    fontSize: 30, fontWeight: FontWeight.w900, color: Colors.white),
    ),
    ),
    body: Container(
    decoration: BoxDecoration(
    gradient: LinearGradient(
    begin: new Alignment(2, 2),
    end: new Alignment(0.5, 0.5),
    colors: [
    Colors.teal,
    Colors.black,
    ],
    tileMode: TileMode.mirror),
    ),

      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(left: 70,right: 10,bottom: 10,top: 10),
            child: Text("Turn Off Your Notification",
              style: TextStyle(fontSize:30,fontWeight:FontWeight.w900,
                color:Colors.white,),),
          ),
          Center(

            child: Container(
              child: Switch(
                // thumb color (round icon)
                activeColor: Colors.amber,
                activeTrackColor: Colors.cyan,
                inactiveThumbColor: Colors.blueGrey.shade600,
                inactiveTrackColor: Colors.grey.shade400,
                splashRadius: 50.0,
                // boolean variable value
                value: forAndroid,
                // changes the state of the switch
                onChanged: (value) => setState(() => forAndroid = value),
              ),
            ),
          ),
        ],
      ),
    )
    );
  }
}
