import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/food.dart';

class MyFoodTitle extends StatelessWidget {
  final Food food;
  final void Function()? ontap;
  const MyFoodTitle({required this.food, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Column(
          children: [
            Text("${food.name}"),
            Text("${food.price}"),
            Text("${food.description}")
          ],
        )),
        Image.asset(
          food.imagepath,
          height: 120,
          width: 120,
        ),
      ],
    );
  }
}
