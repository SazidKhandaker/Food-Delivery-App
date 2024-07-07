import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/food.dart';

class Resturant extends ChangeNotifier {
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
        imagepath: "lib/images/salad/eggsalad.png",
        price: 130,
        category: Foodcategory.salad,
        availableAddOne: [
          Addone(name: "Large", price: 160),
        ]),
    Food(
        name: "Fruite Salad",
        description:
            "prepared with tomato mixed with different fruites  and salad,",
        imagepath: "lib/images/salad/fruitesalad.png",
        price: 270,
        category: Foodcategory.salad,
        availableAddOne: [Addone(name: "Large", price: 310)]),
    Food(
        name: "Healthy Salad",
        description: "prepared with tomato egg  and salad,",
        imagepath: "lib/images/salad/healthysalad.png",
        price: 220,
        category: Foodcategory.salad,
        availableAddOne: [Addone(name: "Large", price: 280)]),
    Food(
        name: "Mixed Cheese Salad",
        description: "Prepared with chicken , cheese and salad",
        imagepath: "lib/images/salad/mixedcheesesalad.png",
        price: 330,
        category: Foodcategory.salad,
        availableAddOne: [Addone(name: "Large", price: 390)]),

    //Drinks
    Food(
        name: "Dite Coke",
        description: "0 fat and low suger",
        imagepath: "lib/images/drinks/coke.png",
        price: 70,
        category: Foodcategory.drinks,
        availableAddOne: [
          Addone(name: "Medium", price: 90),
          Addone(name: "Large", price: 110),
        ]),

    Food(
        name: "Lassi",
        description: "Milk,ice and youget",
        imagepath: "lib/images/drinks/Lassi.png",
        price: 110,
        category: Foodcategory.drinks,
        availableAddOne: [
          Addone(name: "Medium", price: 130),
          Addone(name: "Large", price: 150),
        ]),
    Food(
        name: "Milk Shake",
        description: "Milk ,ice and icecream",
        imagepath: "lib/images/drinks/milkshakeavif.png",
        price: 180,
        category: Foodcategory.drinks,
        availableAddOne: [
          Addone(name: "Medium", price: 210),
          Addone(name: "Large", price: 250),
        ]),
    Food(
        name: "Red Don ",
        description: "carote,ice, milk, youget and sugar",
        imagepath: "lib/images/drinks/redone.png",
        price: 250,
        category: Foodcategory.drinks,
        availableAddOne: [
          Addone(name: "Medium", price: 290),
          Addone(name: "Large", price: 320),
        ]),
    Food(
        name: "White Ocane ",
        description: "ice, milk, youget and sugar",
        imagepath: "lib/images/drinks/whiteone.png",
        price: 420,
        category: Foodcategory.drinks,
        availableAddOne: [
          Addone(name: "Medium", price: 440),
          Addone(name: "Large", price: 470),
        ]),
    //DESSERT

    Food(
        name: "Heart Ocane",
        description: "Coclate, Icecram mixed with ice and cream",
        imagepath: "lib/images/dessert/Hearthocean.png",
        price: 450,
        category: Foodcategory.dessert,
        availableAddOne: [
          Addone(name: "Medium", price: 480),
          Addone(name: "Large", price: 500),
        ]),
    Food(
        name: "Lava Ocane",
        description: "Coclate, Icecram mixed with ice and cream",
        imagepath: "lib/images/dessert/Lava.png",
        price: 240,
        category: Foodcategory.dessert,
        availableAddOne: [
          Addone(name: "Medium", price: 270),
          Addone(name: "Large", price: 300),
        ]),

    Food(
        name: "Maffin ",
        description: "Coclate  and cream",
        imagepath: "lib/images/dessert/Maffin.png",
        price: 160,
        category: Foodcategory.dessert,
        availableAddOne: [
          Addone(name: "Large", price: 180),
        ]),
    Food(
        name: "Pastry Cake",
        description: "Coclate ,vanila  with cream",
        imagepath: "lib/images/dessert/pastycake.png",
        price: 170,
        category: Foodcategory.dessert,
        availableAddOne: [
          Addone(name: "Medium", price: 200),
          Addone(name: "Large", price: 230),
        ]),
    Food(
        name: "Zoomba",
        description: "Coclate, Icecram mixed with ice and cream",
        imagepath: "lib/images/dessert/Zoomba.png",
        price: 470,
        category: Foodcategory.dessert,
        availableAddOne: [
          Addone(name: "Medium", price: 480),
          Addone(name: "Large", price: 500),
        ]),
    //Slider
    Food(
        name: "French Fries",
        description: "potato with mustared oil ",
        imagepath: "lib/images/slider/frenchfries.png",
        price: 110,
        category: Foodcategory.sider,
        availableAddOne: [
          Addone(name: "Medium", price: 130),
          Addone(name: "large", price: 170),
        ]),
    Food(
        name: "Ramen",
        description:
            "a soy-based broth flavored with soy sauce, mirin, pork or chicken stock, and rice vinegar. ",
        imagepath: "lib/images/slider/ramen.png",
        price: 270,
        category: Foodcategory.sider,
        availableAddOne: [
          Addone(name: "Medium", price: 290),
          Addone(name: "large", price: 320),
        ]),
    Food(
        name: "Spicy Ramen",
        description:
            "a soy-based broth flavored with soy sauce, mirin, pork or chicken stock, and rice vinegar. ",
        imagepath: "lib/images/slider/specialramen.png",
        price: 320,
        category: Foodcategory.sider,
        availableAddOne: [
          Addone(name: "Medium", price: 350),
          Addone(name: "large", price: 380),
        ]),
    Food(
        name: "Thai Soup",
        description: "Soup thick with chiken and pawrn ",
        imagepath: "lib/images/slider/specialramen.png",
        price: 150,
        category: Foodcategory.sider,
        availableAddOne: [
          Addone(name: "Medium", price: 180),
          Addone(name: "large", price: 220),
        ]),
    Food(
        name: "widges Soup",
        description: "potato with honey mustared",
        imagepath: "lib/images/slider/widges.png",
        price: 150,
        category: Foodcategory.sider,
        availableAddOne: [
          Addone(name: "Medium", price: 180),
          Addone(name: "large", price: 220),
        ]),
  ];
}
