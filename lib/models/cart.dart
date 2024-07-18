import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/food.dart';

class CartItem {
  Food food;
  List<Addone> selectedavaibleaddone;
  int quantity;
  CartItem(
      {required this.food,
      required this.selectedavaibleaddone,
      this.quantity = 1});

  double get TotalPrice {
    double addoneprice =
        selectedavaibleaddone.fold(0, (sum, addone) => sum + addone.price);
    return (food.price + addoneprice) * quantity;
  }
}
