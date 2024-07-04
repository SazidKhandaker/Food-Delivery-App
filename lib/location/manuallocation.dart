import 'package:flutter/material.dart';

class Mycurrentlocation extends StatelessWidget {
  const Mycurrentlocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
          padding: EdgeInsets.only(top: 10, bottom: 25),
          child: GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text("Your Location"),
                  content: TextField(
                    decoration: InputDecoration(hintText: "Search Address..."),
                  ),
                  actions: [
                    MaterialButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Cancle"),
                    ),
                    MaterialButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Save"),
                    ),
                  ],
                ),
              );
            },
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
        ),
      ],
    );
  }
}
