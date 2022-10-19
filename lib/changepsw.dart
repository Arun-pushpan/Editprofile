import 'package:flutter/material.dart';
class Changepassword extends StatefulWidget {
  const Changepassword({Key? key}) : super(key: key);

  @override
  State<Changepassword> createState() => _ChangepasswordState();
}

class _ChangepasswordState extends State<Changepassword> {
  @override
  bool  _isObscure=true;
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
      padding: EdgeInsets.only(left: 30, right: 30, bottom: 20, top: 80),
      child: ListView(children: [
        Text('Change Password',style: TextStyle(fontSize:30,fontWeight: FontWeight.w900,color: Colors.white),),
      SizedBox(height: 50),
        Padding(padding: EdgeInsets.only(left: 10,right: 20,bottom: 10,top: 20),
          child: TextField(
            obscureText: _isObscure,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText:"Enter Old Password",
              hintStyle:TextStyle(color: Colors.white,fontSize:15,),
              label:Text ("Password",style: TextStyle(color: Colors.white,fontSize:22),),
              icon: Icon(Icons.lock,color: Colors.white,),
              suffixIcon: IconButton(

                icon: Icon(
                  _isObscure ? Icons.visibility : Icons.visibility_off,

                ),
                onPressed: () {
                  setState(() {
                    _isObscure = !_isObscure;
                  });
                },
              ),
            ),
          ),
        ),
        Padding(padding: EdgeInsets.only(left: 10,right: 20,bottom: 10,top: 20),
          child: TextField(
            obscureText: _isObscure,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText:"Enter New Password",
              hintStyle:TextStyle(color: Colors.white,fontSize:15,),
              label:Text (" New Password",style: TextStyle(color: Colors.white,fontSize:22),),
              icon: Icon(Icons.lock_open_sharp,color: Colors.white,),
              suffixIcon: IconButton(

                icon: Icon(
                  _isObscure ? Icons.visibility : Icons.visibility_off,

                ),
                onPressed: () {
                  setState(() {
                    _isObscure = !_isObscure;
                  });
                },
              ),
            ),
          ),
        ),
        Padding(padding: EdgeInsets.only(left: 10,right: 20,bottom: 10,top: 20),
          child: TextField(
            obscureText: _isObscure,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText:"Enter Confirm Password",
              hintStyle:TextStyle(color: Colors.white,fontSize:15,),
              label:Text ("Confirm Password",style: TextStyle(color: Colors.white,fontSize:22),),
              icon: Icon(Icons.lock_clock_rounded,color: Colors.white,),
              suffixIcon: IconButton(

                icon: Icon(
                  _isObscure ? Icons.visibility : Icons.visibility_off,

                ),
                onPressed: () {
                  setState(() {
                    _isObscure = !_isObscure;
                  });
                },
              ),
            ),
          ),
        ),
        Container(
          width: 120,
          height: 80,
          child: Padding(padding: EdgeInsets.only(left: 60,right: 30,bottom: 10,top: 20),
              child:ElevatedButton(
                onPressed:(){}, child: Text("Save",
                style:TextStyle(fontWeight:FontWeight.w700,
                    fontSize:30),),

              )

          ),
        ),
      ],
    ),

    ),
    );
  }
}
