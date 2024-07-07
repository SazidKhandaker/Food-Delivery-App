import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/food.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabBarcontorller;
  MyTabBar({required this.tabBarcontorller});

  List<Tab> _newtabbar() {
    return Foodcategory.values.map((Category) {
      return Tab(
        text: Category.toString().split('.').last,
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0.0),
      child: Container(
        child: TabBar(controller: tabBarcontorller, tabs: _newtabbar()),
      ),
    );
  }
}
