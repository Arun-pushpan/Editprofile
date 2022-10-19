import 'package:culture_exploration/controller/authentication/register/register_state.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'register_controller.dart';

//import 'rout_page.dart'as route;
class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _Register();
}

class _Register extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('GEOGRAF'),
        ),
        body: SafeArea(
          minimum: const EdgeInsets.all(16),
          child: _SignInForm(),
        ));

  }
}

class _SignInForm extends StatefulWidget {
  @override
  __SignInFormState createState() => __SignInFormState();
}

class __SignInFormState extends State<_SignInForm> {
  final _formKey = GlobalKey<FormState>();
  final _Controller = Get.put(RegisterController());
  final _NameController = TextEditingController();
  final _EmailController = TextEditingController();
  final _PhoneController = TextEditingController();
  final _PasswordController = TextEditingController();
  final _ConfirmPasswordController = TextEditingController();
  bool _autoValidate = false;
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Form(
        key: _formKey,
        autovalidateMode: _autoValidate
            ? AutovalidateMode.always
            : AutovalidateMode.disabled,
        child: Scaffold(
          body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment(2, 2),
                  end: Alignment(0.5, 0.5),
                  colors: [
                    Colors.teal,
                    Colors.black,

                  ],
                  tileMode: TileMode.mirror),
            ),
            padding: const EdgeInsets.only(
                left: 10, right: 70, bottom: 50, top: 50),
            child: Center(
              child: ListView(
                children: [

                  Center(
                    child: Column(
                        children: [
                          const Padding(padding: EdgeInsets.only(
                              left: 70, right: 10, bottom: 10, top: 10),
                            child: Text("GEOGRAF",
                              style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w900,
                                color: Colors.white,),),
                          ),

                          Padding(padding: const EdgeInsets.only(
                              left: 30, right: 20, bottom: 10, top: 20),
                            child: TextFormField(
                                decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: "Enter Name",
                                    hintStyle: TextStyle(color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 15),
                                    label: Text("Full Name",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 22),),
                                    icon: Icon(Icons.account_circle_rounded,
                                      color: Colors.white,)
                                ),
                                controller: _NameController,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter your name';
                                  }
                                  if (!RegExp(r"^[a-zA-Z]+ [a-zA-Z]+$")
                                      .hasMatch(value)) {
                                    return "please enter valid name";
                                  }
                                  return null;
                                }
                            ),
                          ),

                          Padding(padding: const EdgeInsets.only(
                              left: 30, right: 20, bottom: 10, top: 20),
                            child: TextFormField(

                                decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: " Enter  Email",
                                    hintStyle: TextStyle(color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 15),
                                    label: Text("Email",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 22),),
                                    icon: Icon(
                                      Icons.email, color: Colors.white,)
                                ),
                                controller: _EmailController,
                                keyboardType: TextInputType.emailAddress,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter your email';
                                  }
                                  if (!RegExp(
                                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+$")
                                      .hasMatch(value)) {
                                    return "please enter valid email";
                                  }
                                  return null;
                                }
                            ),
                          ),
                          Padding(padding: const EdgeInsets.only(
                              left: 30, right: 20, bottom: 10, top: 20),
                            child: TextFormField(

                                decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: " Enter Phone Number",
                                    hintStyle: TextStyle(color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 15),
                                    label: Text("Phone Number",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 22),),
                                    icon: Icon(
                                      Icons.phone, color: Colors.white,)
                                ),
                                controller: _PhoneController,
                                keyboardType: TextInputType.phone,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter your phone number';
                                  }
                                  if (!RegExp(
                                      r"^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$")
                                      .hasMatch(value)) {
                                    return "please enter valid phone number";
                                  }
                                  return null;
                                }
                            ),
                          ),
                          Padding(padding: const EdgeInsets.only(
                              left: 30, right: 20, bottom: 10, top: 20),
                            child: TextFormField(
                                obscureText: _isObscure,
                                decoration: InputDecoration(
                                  border: const OutlineInputBorder(),
                                  hintText: "Enter Password",
                                  hintStyle: const TextStyle(
                                    color: Colors.white, fontSize: 15,),
                                  label: const Text ("Password",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 22),),
                                  icon: const Icon(
                                    Icons.lock, color: Colors.white,),
                                  suffixIcon: IconButton(

                                    icon: Icon(
                                      _isObscure ? Icons.visibility : Icons
                                          .visibility_off,

                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _isObscure = !_isObscure;
                                      });
                                    },
                                  ),
                                ),
                                controller: _PasswordController,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter your password';
                                  }
                                  // if (!RegExp(
                                  //     r"^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$")
                                  //     .hasMatch(value)) {
                                  //   return "please enter valid password";
                                  // }
                                  return null;
                                }
                            ),
                          ),
                          Padding(padding: const EdgeInsets.only(
                              left: 30, right: 20, bottom: 10, top: 20),
                            child: TextFormField(
                                obscureText: _isObscure,
                                decoration: InputDecoration(
                                  border: const OutlineInputBorder(),
                                  hintText: "Enter Confirm Password",
                                  hintStyle: const TextStyle(
                                    color: Colors.white, fontSize: 15,),
                                  label: const Text ("Confirm Password",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 22),),
                                  icon: const Icon(Icons.lock_clock_rounded,
                                    color: Colors.white,),
                                  suffixIcon: IconButton(

                                    icon: Icon(
                                      _isObscure ? Icons.visibility : Icons
                                          .visibility_off,

                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _isObscure = !_isObscure;
                                      });
                                    },
                                  ),
                                ),
                                controller: _ConfirmPasswordController,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter your password';
                                  }
                                  // if (!RegExp(
                                  //     r"^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$")
                                  //     .hasMatch(value)) {
                                  //   return "please enter valid password";
                                  // }
                                  return null;
                                }
                            ),
                          ),
                          Container(
                              width: 240,
                              height: 80,
                              child: Padding(padding: const EdgeInsets.only(
                                  left: 50, right: 0, bottom: 10, top: 20),
                                child: ElevatedButton(
                                  //   onPressed:() {
                                  //     // if (_formKey.currentState!.validate()) {
                                  //     //   var route;
                                  //     //   Navigator.pushNamed(context, route.editprofile);
                                  //     // }
                                  //   }, child: const Text("Register",
                                  //   style:TextStyle(fontWeight:FontWeight.w700,
                                  //       fontSize:30),),
                                  child: Text('LOG IN'),
                                  onPressed: _Controller
                                      .state is RegisterLoading
                                      ? () {}
                                      : _onRegisterButtonPressed,
                                ),


                              )

                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          if (_Controller.state is RegisterFailure)
                            Text(
                              (_Controller.state as RegisterFailure).error,
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Get.theme.errorColor),
                            ),
                          if (_Controller.state is RegisterLoading)
                            Center(
                              child: CircularProgressIndicator(),
                            )
                        ]
                    ),
                  )

                ],
              ),
            ),
          ),
        ),
      );
    }
    );
  }

  _onRegisterButtonPressed() {
    if (_formKey.currentState!.validate()) {
      _Controller.register(_NameController.text, _EmailController.text,
          _PhoneController.text, _PasswordController.text,
          _ConfirmPasswordController.text);
    } else {
      setState(() {
        _autoValidate = true;
      });
    }
  }
}






