import 'package:flutter/material.dart';

class MySliverAppBar extends StatelessWidget {
  final Widget child;
  final Widget title;

  MySliverAppBar({required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar();
  }
}
