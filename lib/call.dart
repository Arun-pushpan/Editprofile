import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '';
class Call extends StatefulWidget {
  const Call({Key? key}) : super(key: key);

  @override
  State<Call> createState() => _CallState();
}

class _CallState extends State<Call> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Scaffold(
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  decoration:InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter Confirm Password",
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                    label: Text(
                      "Confirm Password",
                      style:
                      TextStyle(color: Colors.black, fontSize: 22),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: (){
                    launch('tel:+91 88888888888');
                  },child: Text("flutterCall"),
                ),
              ]
          ),
        ),
      ),
    );
  }
}