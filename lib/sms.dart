
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class Sms extends StatefulWidget {
  const Sms({Key? key}) : super(key: key);

  @override
  State<Sms> createState() => _SmsState();
}

class _SmsState extends State<Sms> {
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
                    hintText: "Enter Phone Number",
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                    label: Text(
                      "Phone Number",
                      style:
                      TextStyle(color: Colors.black, fontSize: 22),
                    ),
                  ),
                ),
                TextFormField(
                  decoration:InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter the Message",
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                    label: Text(
                      "Messages",
                      style:
                      TextStyle(color: Colors.black, fontSize: 22),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: (){
                    launch('sms:+91888888888?body=Hi Welcome to Proto Coders Point');
                  },child: Text("Send"),
                ),
              ]
          ),
        ),
      ),
    );
  }
}