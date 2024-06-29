import 'package:flutter/material.dart';

class myButton extends StatelessWidget {
  final Function()? ontap;
  final String buttonname;

  myButton({required this.ontap, required this.buttonname});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Container(
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Theme.of(context).colorScheme.tertiary),
              color: Theme.of(context).colorScheme.secondary),
          child: Center(
              child: Text(
            buttonname,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          )),
        ),
      ),
    );
  }
}
