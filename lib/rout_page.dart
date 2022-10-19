

import 'package:culture_exploration/appsetting.dart';
import 'package:culture_exploration/changepsw.dart';
import 'package:culture_exploration/editprofile.dart';
import 'package:culture_exploration/festival.dart';
import 'package:culture_exploration/food.dart';
import 'package:culture_exploration/homepage.dart';
import 'package:culture_exploration/login.dart';
import 'package:culture_exploration/notification.dart';
import 'package:culture_exploration/places.dart';
import 'package:culture_exploration/register.dart';
import 'package:culture_exploration/userprofile.dart';
import 'package:culture_exploration/welcome.dart';
import 'package:flutter/material.dart';
const welcomePage='welcome';
const loginPage ="login";
const registerPage="register";
const homePage="home";
const appSettings="setting";
const editProfile="profile";
const changePassword="password";
const userProfile="user";
const places="place";
const foods="food";
const festivals="festival";
const notifications="notification";

void welcome(){}
void login(){}
void register(){}
void home(){}
void setting(){}
void profile(){}
void password(){}
void user(){}
void place(){}

Route<dynamic>controller(RouteSettings settings){
  switch(settings.name){
    case welcomePage:
      {
        return MaterialPageRoute(builder: (context)=>Welcome());
      }
    case loginPage:
      {
        return MaterialPageRoute(builder: (context)=>Login());
      }
    case registerPage:
      {
        return MaterialPageRoute(builder: (context)=>Register());
      }
    case homePage:
      {
        return MaterialPageRoute(builder: (context)=>Homepage());
      }
    case appSettings:
      {
        return MaterialPageRoute(builder: (context)=>Appsetting());
      }
    case editProfile:
      {
        return MaterialPageRoute(builder: (context)=>Editprofile());
      }
    case changePassword:
      {
        return MaterialPageRoute(builder: (context)=>Changepassword());
      }
    // case userProfile:
    //   {
    //     return MaterialPageRoute(builder: (context)=>Userprofile(user: 'user',key: ,));
    //   }
    case places:
      {
        return MaterialPageRoute(builder: (context)=>Places());
      }
    case foods:
      {
        return MaterialPageRoute(builder: (context)=>Food());
      }
    case festivals:
      {
        return MaterialPageRoute(builder: (context)=>Festival());
      }
    case notifications:
      {
        return MaterialPageRoute(builder: (context)=>Notifications());
      }
    default:
      throw("no pages found");
  }
}
