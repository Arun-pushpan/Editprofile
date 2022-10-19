import 'package:flutter/material.dart';
class Exp2 extends StatefulWidget {
  const Exp2({Key? key}) : super(key: key);

  @override
  State<Exp2> createState() => _Exp2State();
}
String ? gender;
bool _c=false;
bool _ct=false;

class _Exp2State extends State<Exp2> {
  var size,height,width;
  @override
  Widget build(BuildContext context) {
    size=MediaQuery.of(context).size;
    height=size.height;
    width=size.width;
    return Scaffold(
        appBar: AppBar(
          actions: [
            PopupMenuButton(itemBuilder: (BuildContext context)=><PopupMenuEntry>[
              PopupMenuItem(child:ListTile(
                title:Text("Account"),      //Pop menu botton
                textColor:Colors.red,
                leading: Icon(Icons.account_box),
              ),),
              PopupMenuDivider(height: 20,),
              PopupMenuItem(child:ListTile(
                title:Text("favourite"),
                textColor:Colors.red,
                leading: Icon(Icons.favorite),
              ),),
              PopupMenuDivider(height: 20,),
              PopupMenuItem(child:ListTile(
                title:Text("Notification"),
                textColor:Colors.red,
                leading: Icon(Icons.notifications),
              ),),
              PopupMenuDivider(height: 20,),
              PopupMenuItem(child:ListTile(
                title:Text("Settings"),
                textColor:Colors.red,
                leading: Icon(Icons.settings),
              ),),
              PopupMenuDivider(height: 20,),
              PopupMenuItem(
                child:ListTile(
                title:Text("Add"),
                textColor:Colors.red,
                leading: Icon(Icons.add,color: Colors.green,),
              ),),
              PopupMenuDivider(height: 20,),
            ])
          ],
          title: Text("Flutter"),
          backgroundColor: Colors.green,
        ),
     body: ListView(
       children:[
         Container(
         height:200,
         width: 2000,
         color: Colors.amber,
         alignment: Alignment.center,
         child: ListView(
                 children: [
                   Card(                //card in flutter
                     child: ListTile(
                       title:Text( "home"),
                     ),
                   ),
                   Card(
                     child: ListTile(
                       title: Text( "home"),
                     ),
                   ),
                   Card(
                     child: ListTile(
                       title: Text( "home"),
                     ),
                   ),
                   Card(
                     child: ListTile(
                       title: Text( "home"),
                     ),
                   ),
                   Card(
                     child: ListTile(
                       title: Text( "home"),
                     ),
                   ),
                   Card(
                     child: ListTile(
                       title: Text( "home"),
                     ),
                   ),
                   Card(
                     child: ListTile(
                       title: Text( "home"),
                     ),
                   ),
                   Card(
                     child: ListTile(
                       title: Text( "home"),
                     ),
                   ),
                   Card(
                     child: ListTile(
                       title: Text( "home"),
                     ),
                   ),
                   Card(
                     child: ListTile(
                       title: Text( "home"),
                     ),
                   ),
                 ],

         ),
       ),

         Container(
           height:200,
           width: 2000,
           color: Colors.greenAccent,
           alignment: Alignment.center,
             child: ListView(
               children: [

                 Card(
                   child: ListTile(
                     title:Text( "home"),
                   ),
                 ),
                 Card(

                   child: ListTile(
                     title: Text( "home"),
                   ),
                 ),
                 Card(
                   child: ListTile(
                     title: Text( "home"),
                   ),
                 ),
                 Card(
                   child: ListTile(
                     title: Text( "home"),
                   ),
                 ),
                 Card(
                   child: ListTile(
                     title: Text( "home"),
                   ),
                 ),
                 Card(
                   child: ListTile(
                     title: Text( "home"),
                   ),
                 ),
                 Card(
                   child: ListTile(
                     title: Text( "home"),
                   ),
                 ),
                 Card(
                   child: ListTile(
                     title: Text( "home"),
                   ),
                 ),
                 Card(
                   child: ListTile(
                     title: Text( "home"),
                   ),
                 ),
                 Card(
                   child: ListTile(
                     title: Text( "home"),
                   ),
                 ),
               ],

             ),
           ),
         SizedBox(height: 20,),
         TextButton(onPressed: (){},
             style: ButtonStyle(
               foregroundColor: MaterialStateProperty.resolveWith<Color>(
    (Set<MaterialState> states)
    {
    if (states.contains(MaterialState.pressed))
    return Colors.pink;
    return Colors.cyan;

         }), ),

             child: Text("GO",style: TextStyle(fontSize: 30),)),
         Divider(color: Colors.black,),
         ListTile(
           title: Text("Male"),
           leading: Radio(
             activeColor: Colors.cyan,
             value: "Male",
             groupValue:gender,
             onChanged: ( value){
               setState(() {
                 gender=value.toString();
               });
             }

           ),
         ),
         ListTile(
           title: Text("Female"),
           leading: Radio(
             activeColor: Colors.cyan,
             value:"Female",
             groupValue: gender,
             onChanged: ( value){
               setState(() {
                 gender=value.toString();
               });
             }
           ),
         ),
         ListTile(
           title: Text("Others"),
           leading: Radio(
             activeColor: Colors.cyan,
             value: "Others",
             groupValue: gender,
             onChanged: (value){
               setState(() {
                 gender=value.toString();
               });
             }
           ),
         ),
         Divider(color: Colors.black),
         Row(
           children: [
             Checkbox(

               focusColor: Colors.indigo,
             //  autofocus: true,
               activeColor: Colors.cyan,
               checkColor: Colors.black,
                 value: _c,
               onChanged:(newValue){
               setState(() {
                 _c=newValue!;
                 if (newValue == true) {
                   _c = true;
                 }
               });
               }

                 ),
             Text("c++"),
             Checkbox(value: _ct,
                 activeColor: Colors.cyan,
                 checkColor: Colors.black,
                 onChanged: (newValue){
               setState(() {
                 _ct=newValue!;
               });
                 }),Text("c"),
           ],
         )
       ]
     ),






      drawer: Drawer(
        elevation: 20,
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
            accountName:Text("Arun"),
            accountEmail: Text("arunpushpan123@gmail.com"),
            currentAccountPicture:CircleAvatar(
            backgroundColor:  Colors.cyan,
              child: Text("flutter"),
        ),
      ),
            ListTile(
              title: Text("settings"),
              leading: new Icon(Icons.settings)
            ),Divider(height: 1.2,),
            ListTile(
              title: Text("Notification"),
              leading:  new Icon(Icons.notifications)
              ,
            ),
            ListTile(
              title: Text("about"),
              leading: new Icon(Icons.favorite),
            )

      ]
    )
      ),
        floatingActionButton: FloatingActionButton(
          elevation: 8.0,
          child: Icon(Icons.change_circle),
          onPressed: (){
            print("i am pressed");
          },
        ),floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      persistentFooterButtons:<Widget> [
        ElevatedButton(onPressed: (){},
            child: Icon(Icons.clear),),
    ElevatedButton(onPressed: (){},
    child: Icon(Icons.contacts),),
        ElevatedButton(onPressed: (){},
          child: Icon(Icons.message),),
      ],



    );
  }
}
