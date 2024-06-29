import 'package:flutter/material.dart';
import 'package:food_delivery_app/widget/mybutton.dart';
import 'package:food_delivery_app/widget/textfield.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.lock_outline,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            //Message of app
            SizedBox(
              height: 25,
            ),
            Text("Food Delivery App",
                style: GoogleFonts.lato(
                  textStyle: TextStyle(
                    fontSize: 20,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                )),
            SizedBox(
              height: 25,
            ),

            //Email field
            myCreatTextField(
                controller: emailcontroller, hinttext: "Email", istrue: false),
            SizedBox(
              height: 10,
            ),
            myCreatTextField(
                controller: passwordcontroller,
                hinttext: "Password",
                istrue: true),
            SizedBox(
              height: 10,
            ),

            //Sign_In button
            myButton(ontap: () {}, buttonname: "Sign-in"),
          ],
        ),
      ),
    );
  }
}
