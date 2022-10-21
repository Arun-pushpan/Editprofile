import 'package:flutter/material.dart';
import 'rout_page.dart'as route;
import 'main.dart';
class Myhome extends StatefulWidget {
  const Myhome({Key? key}) : super(key: key);

  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  var selectedItem = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
        centerTitle: true,
        actions: [
          PopupMenuButton(onSelected: (value) {
            // your logic
            setState(() {
              selectedItem = value.toString();
            });
            print(value);
            Navigator.pushNamed(context, value.toString());
          }, itemBuilder: (BuildContext bc) {
            return const [
              PopupMenuItem(
                child: Text("Call"),
                value: '/calls',
              ),
              PopupMenuItem(
                child: Text("Sms"),
                value: '/sms',
              ),
              PopupMenuItem(
                child: Text("Mail"),
                value: '/mails',
              ),
              PopupMenuItem(
                child: Text("web"),
                value: '/webs',
              )
            ];
          })
        ],
      ),
      body: Center(
        child: Text(selectedItem),
      ),
    );
  }
}






