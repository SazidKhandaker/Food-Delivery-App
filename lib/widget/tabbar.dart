import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabBarcontorller;
  MyTabBar({required this.tabBarcontorller});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
        controller: tabBarcontorller,
        tabs: [
          Tab(
            icon: Icon(Icons.home),
          ),
          Tab(
            icon: Icon(Icons.settings),
          )
        ],
      ),
    );
  }
}
