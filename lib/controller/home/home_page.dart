import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../model/user.dart';
import 'home_controller.dart';

class Editprofiles extends StatelessWidget {
  final User user;
  final _controller = Get.put(HomeController());

 Editprofiles ({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: SafeArea(
        minimum: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(
                'Welcome, ${user.name}\n ${user.email}\n ${user.phone_no} \n${user.password}\n${user.confirm_password}',
                style: TextStyle(fontSize: 24),
              ),
              const SizedBox(
                height: 12,
              ),
              TextButton(
                child: Text('Logout'),
                onPressed: () {
                  _controller.signOut();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}