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
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${widget.food.name}",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "${widget.food.price}",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "${widget.food.description}",
                  style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Add-one",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
                SizedBox(
                  height: 10,
                ),
                ListView.builder(
                  itemCount: widget.food.availableAddOne.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    Addone addone = widget.food.availableAddOne[index];
                    return CheckboxListTile(
                        title: Text("${addone.name}"),
                        subtitle: Text("${addone.price}"),
                        value: false,
                        onChanged: (value) {});
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
