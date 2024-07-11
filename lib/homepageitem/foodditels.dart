import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/food.dart';

class FoodPageDitels extends StatefulWidget {
  final Food food;

  FoodPageDitels({required this.food});

  @override
  State<FoodPageDitels> createState() => _FoodPageDitelsState();
}

class _FoodPageDitelsState extends State<FoodPageDitels> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset("${widget.food.imagepath}"),
          Text("${widget.food.name}"),
          SizedBox(
            height: 10,
          ),
          Text("${widget.food.description}}"),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
