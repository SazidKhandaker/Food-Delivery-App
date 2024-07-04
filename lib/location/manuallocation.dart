import 'package:flutter/material.dart';

class Mycurrentlocation extends StatelessWidget {
  const Mycurrentlocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Delivery Now",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.secondary),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 25,
            ),
            child: Row(
              children: [
                Text(
                  "Your Current location",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.secondary),
                ),
                SizedBox(
                  width: 3,
                ),
                Icon(Icons.arrow_drop_down)
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
