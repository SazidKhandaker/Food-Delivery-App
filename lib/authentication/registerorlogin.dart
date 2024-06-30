import 'package:flutter/material.dart';
import 'package:food_delivery_app/authentication/loginpage.dart';
import 'package:food_delivery_app/authentication/registerpage.dart';

class RegisterOrLogin extends StatefulWidget {
  RegisterOrLogin({super.key});

  @override
  State<RegisterOrLogin> createState() => _RegisterOrLoginState();
}

class _RegisterOrLoginState extends State<RegisterOrLogin> {
  bool showlogin = true;

  void togglepage() {
    setState(() {
      showlogin = !showlogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showlogin) {
      return LoginPage(ontap: togglepage);
    } else {
      return RegisterPage();
    }
  }
}
