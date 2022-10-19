import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'main.dart';

class Register extends StatefulWidget {
  //static const String id = 'register';
  //final formKey = GlobalKey<FormState>();
  Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final formKey = GlobalKey<FormState>();
  static const String id = "register";

  final Map data = {
    'name': String,
    'email': String,
    'phone no': int,
    'password': String,
    'confirm password': String,
  };

  @override
  bool _isObscure = true;

  //get data => null;

  //get formKey => null;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
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
          padding: EdgeInsets.only(left: 10, right: 70, bottom: 50, top: 50),
          child: Center(
            child: Form(
              key: formKey,
              child: ListView(
                children: [
                  Center(
                    child: Column(children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: 70, right: 10, bottom: 10, top: 10),
                        child: Text(
                          "GEOGRAF",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 30, right: 20, bottom: 10, top: 20),
                        child: TextFormField(
                          onSaved: (input) => data['name'] = input,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Enter Name",
                              hintStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15),
                              label: Text(
                                "Full Name",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 22),
                              ),
                              icon: Icon(
                                Icons.account_circle_rounded,
                                color: Colors.white,
                              )),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 30, right: 20, bottom: 10, top: 20),
                        child: TextFormField(
                          onSaved: (input) => data['email'] = input,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: " Enter  Email",
                              hintStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15),
                              label: Text(
                                "Email",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 22),
                              ),
                              icon: Icon(
                                Icons.email,
                                color: Colors.white,
                              )),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 30, right: 20, bottom: 10, top: 20),
                        child: TextFormField(
                          onSaved: (input) => data['phone no'] = input,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: " Enter Phone No",
                              hintStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15),
                              label: Text(
                                "Phone No",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 22),
                              ),
                              icon: Icon(
                                Icons.phone,
                                color: Colors.white,
                              )),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 30, right: 20, bottom: 10, top: 20),
                        child: TextFormField(
                          onSaved: (input) => data['password'] = input,
                          obscureText: _isObscure,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Enter Password",
                            hintStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                            label: Text(
                              "Password",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 22),
                            ),
                            icon: Icon(
                              Icons.lock,
                              color: Colors.white,
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _isObscure
                                    ? Icons.visibility
                                    : Icons.visibility_off,
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
                      Padding(
                        padding: EdgeInsets.only(
                            left: 30, right: 20, bottom: 10, top: 20),
                        child: TextFormField(
                          onSaved: (input) => data['confirm password'] = input,
                          obscureText: _isObscure,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Enter Confirm Password",
                            hintStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                            label: Text(
                              "Confirm Password",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 22),
                            ),
                            icon: Icon(
                              Icons.lock_clock_rounded,
                              color: Colors.white,
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _isObscure
                                    ? Icons.visibility
                                    : Icons.visibility_off,
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
                        width: 240,
                        height: 80,
                        child: Padding(
                            padding: EdgeInsets.only(
                                left: 50, right: 0, bottom: 10, top: 20),
                            child: ElevatedButton(
                                  onPressed: () {
                                  },
                              child: Text("Register"),
                            ),
                      ),
                      )
                    ]
                      ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
