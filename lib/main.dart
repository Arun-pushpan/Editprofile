import 'package:urlboy/homepage.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:urlboy/sms.dart';
import 'package:urlboy/website.dart';

import 'call.dart';
import 'mail.dart';
enum Menu { itemOne, itemTwo, itemThree, itemFour }
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/calls': (context) => const Call(),
        '/sms': (context) => const Sms(),
        '/mails': (context) => const Mail(),
        '/webs': (context) => const Website()
      },
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Myhome(),
    );
  }
}