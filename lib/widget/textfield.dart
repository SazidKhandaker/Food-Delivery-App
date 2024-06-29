import 'package:flutter/material.dart';

class myCreatTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hinttext;
  final bool istrue;
  myCreatTextField(
      {required this.controller, required this.hinttext, required this.istrue});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 0),
      child: TextField(
        controller: controller,
        obscureText: istrue,
        decoration: InputDecoration(
            hintText: hinttext,
            enabledBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: Theme.of(context).colorScheme.tertiary),
            ),
            focusedBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: Theme.of(context).colorScheme.primary))),
      ),
    );
  }
}
