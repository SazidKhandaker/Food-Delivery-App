import 'package:flutter/material.dart';
import 'package:food_delivery_app/homepageitem/foodditels.dart';
import 'package:food_delivery_app/models/food.dart';

class MyFoodTitle extends StatelessWidget {
  final Food food;
  final void Function()? ontap;
  const MyFoodTitle({required this.food, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => FoodPageDitels(
                      food: food,
                    )),
          );
        },
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${food.name}",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "${food.price} BDT",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Theme.of(context).colorScheme.inversePrimary),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "${food.description}",
                      style: TextStyle(
                          fontSize: 14,
                          color: Theme.of(context).colorScheme.inversePrimary),
                    ),
                  ],
                )),
                SizedBox(
                  width: 15,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                  child: Image.asset(
                    food.imagepath,
                    height: 140,
                    width: 140,
                  ),
                ),
              ],
            ),
            Divider(
              color: Theme.of(context).colorScheme.tertiary,
              endIndent: 25,
              indent: 25,
            ),
          ],
        ),
      ),
    );
  }
}
