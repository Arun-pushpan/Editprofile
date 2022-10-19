import 'package:flutter/material.dart';
import 'rout_page.dart'as route;

class Appsetting extends StatefulWidget {
  const Appsetting({Key? key}) : super(key: key);

  @override
  State<Appsetting> createState() => _AppsettingState();
}

class _AppsettingState extends State<Appsetting> {
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
        padding: EdgeInsets.only(left: 40, right: 40, bottom: 20, top: 80),
        child: ListView(children: [
          Text('Account Settings',style: TextStyle(fontSize:30,fontWeight: FontWeight.w900,color: Colors.white),),
          SizedBox(height: 50),
          Card(
            color: Colors.indigoAccent.shade400,
            child: ListTile(
              onTap: (){
                Navigator.pushNamed(context, route.editProfile);
              },
              title: Text(
                "Edit Profile",

                style: TextStyle(color: Colors.white,fontSize: 25, fontWeight: FontWeight.w900),
              ),
            ),
          ),
          SizedBox(height: 50),
          Card(
              color: Colors.indigoAccent.shade400,
              child: ListTile(
                onTap: (){
                  Navigator.pushNamed(context, route.changePassword);
                },
                title: Text(
                  "Change Password",
                  style: TextStyle(color: Colors.white,fontSize: 25, fontWeight: FontWeight.w900),
                ),
              )),
          SizedBox(height: 50),
          Card(
              color: Colors.indigoAccent.shade400,
              child: ListTile(
                onTap: (){
                  Navigator.pushNamed(context, route.userProfile);
                  },
                title: Text(
                  "User Profile",
                  style: TextStyle(color: Colors.white,fontSize: 25, fontWeight: FontWeight.w900),
                ),
              )),
          SizedBox(height: 30),
        ]),
      ),
    );
  }
}
