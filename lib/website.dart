import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class Website extends StatefulWidget {
  const Website({Key? key}) : super(key: key);

  @override
  State<Website> createState() => _WebsiteState();
}

class _WebsiteState extends State<Website> {
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
                    hintText: "Enter the link",
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                    label: Text(
                      "link",
                      style:
                      TextStyle(color: Colors.black, fontSize: 22),
                    ),
                  ),
                ),
                    ElevatedButton(
                      onPressed: (){
                        launch('https://protocoderspoint.com/');
                      },child: Text("link"),
                    ),
              ]
          ),
        ),
      ),
    );
  }
}