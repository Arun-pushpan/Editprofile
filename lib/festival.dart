import 'package:flutter/material.dart';
class Festival extends StatefulWidget {
  const Festival({Key? key}) : super(key: key);

  @override
  State<Festival> createState() => _FestivalState();
}

class _FestivalState extends State<Festival> {
  @override
  Widget build(BuildContext context) {
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
            padding: EdgeInsets.only(left: 30,right: 30,bottom: 50,top: 30),
            child: ListView(
                children: [

                  Column(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 10,right: 20,bottom: 10,top: 0),
                          child:Text("Festivals",style: TextStyle(fontSize:30,fontWeight: FontWeight.w800,color: Colors.white),)

                      ),
                      Container(
                        width: 700,
                        height: 300,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 0,right: 0,bottom: 10,top: 10),
                          child: Card(
                            elevation: 30,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            color: Colors.teal.withOpacity(1.0),
                          ),
                        ),
                      ),
                      Container(
                        width: 700,
                        height: 300,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 0,right: 0,bottom: 10,top: 10),
                          child: Card(
                            elevation: 30,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            color: Colors.teal.withOpacity(1.0),
                          ),
                        ),
                      ),
                      Container(
                        width: 700,
                        height: 300,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 0,right: 0,bottom: 10,top: 10),
                          child: Card(
                            elevation: 30,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            color: Colors.teal.withOpacity(1.0),
                          ),
                        ),
                      ),
                      Container(
                        width: 700,
                        height: 300,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 0,right: 0,bottom: 10,top: 10),
                          child: Card(
                            elevation: 30,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            color: Colors.teal.withOpacity(1.0),
                          ),
                        ),
                      ),
                      Container(
                        width: 700,
                        height: 300,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 0,right: 0,bottom: 10,top: 10),
                          child: Card(
                            elevation: 30,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            color: Colors.teal.withOpacity(1.0),
                          ),
                        ),
                      ),
                      Container(
                        width: 700,
                        height: 300,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 0,right: 0,bottom: 10,top: 10),
                          child: Card(
                            elevation: 30,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            color: Colors.teal.withOpacity(1.0),
                          ),
                        ),
                      ),
                      Container(
                        width: 700,
                        height: 300,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 0,right: 0,bottom: 10,top: 10),
                          child: Card(
                            elevation: 30,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            color: Colors.teal.withOpacity(1.0),
                          ),
                        ),
                      ),
                      Container(
                        width: 700,
                        height: 300,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 0,right: 0,bottom: 10,top: 10),
                          child: Card(
                            elevation: 30,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            color: Colors.teal.withOpacity(1.0),
                          ),
                        ),
                      ),

                    ],
                  ),
                ]
            )
        )
    );
  }
}
