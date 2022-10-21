
import 'package:urlboy/call.dart';
import 'package:urlboy/mail.dart';
import 'package:urlboy/sms.dart';
import 'package:urlboy/website.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const callPage ="call";
const smsPage="sms";
const mailPage="mail";
const website="web";

void call(){}
void sms(){}
void mail(){}
void websites(){}

Route<dynamic>controller(RouteSettings settings){
  switch(settings.name){
    case callPage:
      {
        return MaterialPageRoute(builder: (context)=>Call());
      }
    case smsPage:
      {
        return MaterialPageRoute(builder: (context)=>Sms());
      }
    case mailPage:
      {
        return MaterialPageRoute(builder: (context)=>Mail());
      }
    case website:
      {
        return MaterialPageRoute(builder: (context)=>Website());
      }
    default:
      throw("no pages found");
  }
}// TODO Implement this library.