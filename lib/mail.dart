
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class Mail extends StatefulWidget {
  const Mail({Key? key}) : super(key: key);

  @override
  State<Mail> createState() => _MailState();
}

class _MailState extends State<Mail> {
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
                    hintText: "To",
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                    label: Text(
                      "",
                      style:
                      TextStyle(color: Colors.black, fontSize: 22),
                    ),
                  ),
                ),
                TextFormField(
                  decoration:InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Subject",
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                    label: Text(
                      "",
                      style:
                      TextStyle(color: Colors.black, fontSize: 22),
                    ),
                  ),
                ),
                TextFormField(
                  decoration:InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Body",
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                    label: Text(
                      "",
                      style:
                      TextStyle(color: Colors.black, fontSize: 22),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: (){
                    launch('https://protocoderspoint.com/');
                  },child: Text("Compress"),
                ),
              ]
          ),
        ),
      ),
    );
  }
}