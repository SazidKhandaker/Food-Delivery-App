import 'package:food_delivery_app/models/food.dart';

class Resturant {
  List<Food> menu = [
    //Burgers
    Food(
        name: "Bacon Burger",
        description:
            "the ground chuck, chopped bacon, onion, and Worcestershire sauce.",
        imagepath: "lib/images/burgers/bacon.png",
        price: 350,
        category: Foodcategory.burgers,
        availableAddOne: [
          Addone(name: "Extra Cheese", price: 30),
          Addone(name: "Extra Bacon", price: 110),
          Addone(name: "Extra egg", price: 40),
        ]),
    Food(
        name: "Burger with Fries",
        description: "Chicken burger with French Fries. Combo package",
        imagepath: "lib/images/burgers/Burgerfries.png",
        price: 250,
        category: Foodcategory.burgers,
        availableAddOne: [
          Addone(name: "Extra Cheese", price: 30),
          Addone(name: "Extra fries", price: 70),
          Addone(name: "Extra egg", price: 40),
        ]),
    Food(
        name: "Double Decker",
        description:
            "Two chiken patties, two slices of American cheese, lettuce, tomato, onions, and spread",
        imagepath: "lib/images/burgers/doubledecker.png",
        price: 410,
        category: Foodcategory.burgers,
        availableAddOne: [
          Addone(name: "Extra Cheese", price: 30),
          Addone(name: "Extra patty", price: 100),
          Addone(name: "Extra egg", price: 40),
        ]),
    Food(
        name: "Pickle Chiken Burger",
        description:
            "a stack of crispy pickle fries, plus crinkle-cut pickle slices, a creamy dill-infused ranch sauce, and chopped lettuce, all on a toasted brioche bun.",
        imagepath: "lib/images/burgers/pickelchiken.png",
        price: 300,
        category: Foodcategory.burgers,
        availableAddOne: [
          Addone(name: "Extra Cheese", price: 30),
          Addone(name: "Extra patty", price: 100),
          Addone(name: "Extra egg", price: 40),
          Addone(name: "Extra pike", price: 50),
        ]),
    Food(
        name: "Student Burger",
        description:
            "usually made with chiken, some breadcrumbs, an egg and seasoning and has to be our favourite grill ingredient along with the sausage",
        imagepath: "lib/images/burgers/Studentburger.png",
        price: 180,
        category: Foodcategory.burgers,
        availableAddOne: [
          Addone(name: "Extra Cheese", price: 30),
          Addone(name: "Extra patty", price: 100),
          Addone(name: "Extra egg", price: 40),
          Addone(name: "Extra bbq sauce", price: 25),
        ]),

    //Salads
  ];
}
