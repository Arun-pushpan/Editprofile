// import 'package:culture_exploration/appsetting.dart';
// import 'package:culture_exploration/carosel_page.dart';
// import 'package:culture_exploration/changepsw.dart';
// import 'package:culture_exploration/editprofile.dart';
// import 'package:culture_exploration/homepage.dart';
// import 'package:culture_exploration/login.dart';
// import 'package:culture_exploration/places.dart';
// import 'package:culture_exploration/register.dart';
// import 'package:culture_exploration/rout_page.dart';
// import 'package:culture_exploration/screens/account.dart';
// import 'package:culture_exploration/userprofile.dart';
// import 'package:culture_exploration/welcome.dart';
// //import 'package:culture_exploration/homepage.dart';
// //import 'package:culture_exploration/login.dart';
// //import 'package:culture_exploration/register.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'rout_page.dart'as route;
// main(){
// runApp(Myapp());
// }
// class Myapp extends StatelessWidget {
//
//   const Myapp({Key? key}) : super(key: key);
//
//   static get apiProvider => null;
//
//   static get filterProvider => null;
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       onGenerateRoute: route.controller,initialRoute: route.welcomePage,
//       debugShowCheckedModeBanner: true,
//       title: "culture",
//       theme:ThemeData(
//         primarySwatch:Colors.blue,
//
//       ),
//
//       home: Welcome(),
//     );
//
//   }
// }

// class Settings extends StatefulWidget {
// @override
// _SettingsState createState() => _SettingsState();
// }
// class _SettingsState extends State<Settings> {
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider<Data>(
//       create: (context) => Data(),
//       child: MaterialApp(home: const Userprofile(), routes: {
//         'userprofile': (context) => const Userprofile(),
//          //'register_screen': (context) => Register(),
//       }),
//     );
//   }
// }

  // class Data extends ChangeNotifier {
  // Map data = {
  // 'name': 'your name',
  // 'email': 'youremail@gmail.com',
  // 'phone no': 00,
  //   'password':'your password',
  //   'confirm password':'your confirm password',
  // };
  // void updateAccount(input) {
  // data = input;
  // notifyListeners();
  // }
  // }



// import 'package:flutter/material.dart';
// import 'route/routing_page.dart'as route;
// void main(){
//   runApp(Myapp());
// }
// class Myapp extends StatelessWidget {
//   const Myapp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       onGenerateRoute: route.controller,
//       initialRoute: route.homePage,
//     );
//   }
// }
// import 'package:culture_exploration/db_helper/sql_helper.dart';
// import 'package:culture_exploration/exm/exp1.dart';
// import 'package:culture_exploration/exm/exp2.dart';
// import 'package:culture_exploration/exm/exp3.dart';
// import 'package:culture_exploration/exm/form.dart';
// import 'package:culture_exploration/homepage.dart';
// import 'package:culture_exploration/register.dart';
// import 'package:culture_exploration/userprofile.dart';
// import 'package:provider/provider.dart';
// import 'package:flutter/material.dart';
//
// void main(){
//   runApp(Myapp());
// }
// class Myapp extends StatelessWidget {
//   const Myapp({Key? key}) : super(key: key);
// final appTitle="Flutter";
//   @override
//   Widget build(BuildContext context) {
//
//     return  MaterialApp(
//
//       title: appTitle,
//       theme: ThemeData(
//         primarySwatch: Colors.cyan
//
//       ),
//
//       home:Homepage(),routes: {
//       'register_screen':(context)=>Register(),
//       'user_screen':(context)=>Userprofile(),
//     },
//     );
//   }
// }
// import 'package:flutter/material.dart';
// void main(){
//   runApp(Myapp());
//
// }
// class Myapp extends StatelessWidget {
//   const Myapp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: true,
//       title: "culture",
//       theme: ThemeData(
//         backgroundColor: Colors.green
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import './screens/account.dart';
// import './screens/settings.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Provider Demo',
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider<Data>(
//       create: (context) => Data(),
//       child: MaterialApp(home: AccountScreen(), routes: {
//         'register': (context) => R(),
//       //  'settings_screen': (context) => SettingsScreen(),
//       }),
//     );
//   }
// }
//
// class Data extends ChangeNotifier {
//   Map data = {
//     'name': 'your name',
//     'email': 'youremail@gmail.com',
//     'age': 00
//   };
//   void updateAccount(input) {
//     data = input;
//     notifyListeners();
//   }
// }

//import 'package:culture_exploration/login.dart';
// //import 'package:culture_exploration/views/home_page.dart';
// //import 'package:culture_exploration/views/login_page.dart';
// import 'package:culture_exploration/welcome.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// void main() {
//   runApp(MyApp());
// }
// class MyApp extends StatelessWidget {
// // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: Login()
//     );
//   }
// }


import 'package:culture_exploration/controller/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/authentication/authentication_controller.dart';
import 'controller/authentication/authentication_service.dart';
import 'controller/authentication/authentication_state.dart';
import 'controller/authentication/register/register_page.dart';
import 'controller/home/home_page.dart';
import 'editprofile.dart';

//
// void main() {
//   initialize();
//   runApp(MyApp());
// }
//
// void initialize() {
//   Get.lazyPut(() => AuthenticationController(Get.put(FakeAuthenticationService())),);
// }
//
// class MyApp extends GetWidget<AuthenticationController> {
//
//   // This widget is the root of your application
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       title: 'Fluter GetX Auth',
//       theme: ThemeData(
//         primarySwatch: Colors.purple,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       debugShowCheckedModeBanner: false,
//       home: Obx(() {
//         if (controller.state is UnAuthenticated) {
//           return Register();
//         }
//
//         if (controller.state is Authenticated) {
//           return Editprofile(
//             user: (controller.state as Authenticated).user,
//           );
//         }
//         return Card();
//
//       }),
//     );
//   }
// }
//
//

void main() {
  initialize();
  runApp(MyApp());
}

void initialize() {
  Get.lazyPut(() => AuthenticationController(Get.put(FakeAuthenticationService())),);
}

class MyApp extends GetWidget<AuthenticationController> {

  // This widget is the root of your application
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Fluter GetX Auth',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: Obx(() {
        if (controller.state is UnAuthenticated) {
          return Register();
        }

        if (controller.state is Authenticated) {
          return Editprofiles(
            user: (controller.state as Authenticated).user,
          );
        }
        return SplashScreen();
      }),
    );
  }
}




