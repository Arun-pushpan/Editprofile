import 'package:culture_exploration/controller/authentication/register/register_state.dart';
import 'package:get/get.dart';

import '../authentication_controller.dart';
import '../authentication_service.dart';

class RegisterController extends GetxController {
  final AuthenticationController _authenticationController = Get.find();
  final _registerstateStream = RegisterState().obs;

  RegisterState get state => _registerstateStream.value;

  void register(String name, String email, String phone_no, String password,
      String confirm_password) async {
//_RegisterStateStream.value= RegisterLoading();
  try{
    await _authenticationController.signIn(name,email,phone_no,password,confirm_password);
    _registerstateStream.value=RegisterState();
  } on AuthenticationException catch(e){

    _registerstateStream.value= RegisterFailure( error:e.message);
  }
}
}