// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/food.dart';
import 'package:food_delivery_app/widget/mybutton.dart';

class FoodPageDitels extends StatefulWidget {
  final Food food;
  final Map<Addone, bool> selectAvaiableAddons = {};

  FoodPageDitels({required this.food}) {
    for (Addone addone in food.availableAddOne) {
      selectAvaiableAddons[addone] = false;
    }
  }

  @override
  State<FoodPageDitels> createState() => _FoodPageDitelsState();
}

class _FoodPageDitelsState extends State<FoodPageDitels> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: SingleChildScrollView(
            child: Column(
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
                        "${widget.food.price} Taka",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color:
                                Theme.of(context).colorScheme.inversePrimary),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "${widget.food.description}",
                        style: TextStyle(
                            fontSize: 16,
                            color:
                                Theme.of(context).colorScheme.inversePrimary),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Add-one",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color:
                                Theme.of(context).colorScheme.inversePrimary),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Theme.of(context).colorScheme.secondary),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ListView.builder(
                          itemCount: widget.food.availableAddOne.length,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            Addone addone = widget.food.availableAddOne[index];
                            return CheckboxListTile(
                                title: Text("${addone.name}"),
                                subtitle: Text(
                                  "${addone.price} Taka",
                                  style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .inversePrimary),
                                ),
                                value: widget.selectAvaiableAddons[addone],
                                onChanged: (bool? value) {
                                  setState(() {
                                    widget.selectAvaiableAddons[addone] =
                                        value!;
                                  });
                                });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                myButton(ontap: () {}, buttonname: "Add To Cart"),
                SizedBox(
                  height: 25,
                )
              ],
            ),
          ),
        ),
        SafeArea(
          child: Opacity(
            opacity: 0.6,
            child: Container(
              margin: EdgeInsets.only(left: 10, top: 10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).colorScheme.secondary,
              ),
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios_new),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
        )
      ],
    );
  }
}
