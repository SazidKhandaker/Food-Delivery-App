import 'package:flutter/material.dart';

class ListOfDrawer extends StatelessWidget {
  final IconData icon;
  final String text;
  final void Function()? oncall;
  ListOfDrawer({required this.icon, required this.text, required this.oncall});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Theme.of(context).colorScheme.inversePrimary,
      ),
      title: Text(
        "$text",
        style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.inversePrimary),
      ),
      onTap: oncall,
    );
  }
}
