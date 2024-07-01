import 'package:flutter/material.dart';
import 'package:food_delivery_app/widget/drawerlist.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: Icon(
              Icons.delivery_dining,
              size: 80,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          ListOfDrawer(
              icon: Icons.home,
              text: "H O M E",
              oncall: () {
                Navigator.of(context).pop();
              }),
          ListOfDrawer(
              icon: Icons.settings,
              text: "S E T T I N G",
              oncall: () {
                Navigator.of(context).pop();
              }),
          Spacer(),
          ListOfDrawer(
              icon: Icons.h_mobiledata, text: "L O G O U T", oncall: () {}),
          SizedBox(
            height: 25,
          )
        ],
      ),
    );
  }
}
