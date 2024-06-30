import 'package:flutter/material.dart';
import 'package:food_delivery_app/widget/mybutton.dart';
import 'package:food_delivery_app/widget/textfield.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final TextEditingController confirmpasswordcontroller =
      TextEditingController();

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
              Icons.lock_open_outlined,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            //Message of app
            SizedBox(
              height: 25,
            ),
            Text("Create an account",
                style: TextStyle(
                  fontSize: 20,
                  color: Theme.of(context).colorScheme.inversePrimary,
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
            //passwordfield
            myCreatTextField(
                controller: passwordcontroller,
                hinttext: "Password",
                istrue: true),
            SizedBox(
              height: 10,
            ),
            myCreatTextField(
                controller: confirmpasswordcontroller,
                hinttext: "Confirm-password",
                istrue: true),
            SizedBox(
              height: 10,
            ),

            //Sign_In button
            myButton(ontap: () {}, buttonname: "Sign-in"),

            //Register,

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Not a Member?",
                    style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    )),
                Text("Register Now",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
