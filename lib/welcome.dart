import 'package:flutter/material.dart';
import 'rout_page.dart' as r;
class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: Center(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(left: 40,right: 10,bottom: 10,top: 140),
                child: Text("GEOGRAF",
                  style: TextStyle(fontSize:30,fontWeight:FontWeight.w900,
                    color:Colors.white,),),
              ),
      SizedBox(height: 50),

      Container(
        width: 240,
        height: 80,
        child: Padding(padding: EdgeInsets.only(left: 30,right: 0,bottom: 10,top: 20),
            child:ElevatedButton(
              onPressed:(){
                Navigator.pushNamed(context, r.loginPage);
              }, child: Text("Continue",
              style:TextStyle(fontWeight:FontWeight.w700,
                  fontSize:30),),

            )

        ),
      ),
              Padding(padding: EdgeInsets.only(left: 40,right: 10,bottom: 10,top: 140),
                child: Text("Welcome to new world",
                  style: TextStyle(fontSize:25,fontWeight:FontWeight.w900,
                    color:Colors.white,),),
              ),
            ],


          ),
        ),
      ),
    );
  }
}
