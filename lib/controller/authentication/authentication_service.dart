import 'package:get/get.dart';

import '../../model/user.dart';
abstract class AuthenticationService extends GetxService{
  Future<User?>getCurrentUser();
  Future<User>signInWithEmailAndPassword(String name,String email,String phone_no,String password,String confirmpassword);
  Future<void> signOut();
}

class FakeAuthenticationService extends AuthenticationService {
  @override
  Future<User?> getCurrentUser() async {
    // simulated delay
    await Future.delayed(Duration(seconds: 2));
    return null;
  }

  @override
  Future<User> signInWithEmailAndPassword(String name, String email, String phone_no, String password,String confirmpassword) async {
    await Future.delayed(Duration(seconds: 2));

    if (email.isEmpty&& password.isEmpty ) {
      throw AuthenticationException(message: 'Wrong username or password');
    }

    return User(name: name, email: email,phone_no:phone_no, password: password,confirm_password: confirmpassword);
  }

  @override
  Future<void> signOut() async {}
}

class AuthenticationException implements Exception {
  final String message;

  AuthenticationException({this.message = 'Unknown error occurred. '});
}
