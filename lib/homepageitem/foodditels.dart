import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/food.dart';

class FoodPageDitels extends StatelessWidget {
  final Food food;

  FoodPageDitels({required this.food});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset("${food.imagepath}"),
        ],
      ),
    );
  }
}
