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

    Food(
        name: "chase nut salad",
        description: "prepared with chiken nuts and sadlad,",
        imagepath: "lib/images/salad/chawsnetsalad.png",
        price: 280,
        category: Foodcategory.salad,
        availableAddOne: [
          Addone(name: "Large", price: 340),
        ]),

    Food(
        name: "Egg salad",
        description: "prepared with tomato egg  and salad,",
        imagepath: "lib/salad/burgers/eggsalad.png",
        price: 130,
        category: Foodcategory.salad,
        availableAddOne: [
          Addone(name: "Large", price: 160),
        ]),
    Food(
        name: "Fruite Salad",
        description:
            "prepared with tomato mixed with different fruites  and salad,",
        imagepath: "lib/salad/burgers/fruitesalad.png",
        price: 270,
        category: Foodcategory.salad,
        availableAddOne: [Addone(name: "Large", price: 310)]),
    Food(
        name: "Healthy Salad",
        description: "prepared with tomato egg  and salad,",
        imagepath: "lib/salad/burgers/healthysalad.png",
        price: 220,
        category: Foodcategory.salad,
        availableAddOne: [Addone(name: "Large", price: 280)]),
    Food(
        name: "Mixed Cheese Salad",
        description: "Prepared with chicken , cheese and salad",
        imagepath: "lib/salad/burgers/mixedcheesesalad.png",
        price: 330,
        category: Foodcategory.salad,
        availableAddOne: [Addone(name: "Large", price: 390)]),

    //Drinks
  ];
}
