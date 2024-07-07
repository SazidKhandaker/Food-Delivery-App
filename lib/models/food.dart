class Food {
  final String name;
  final String description;
  final String imagepath;
  final int price;
  final Foodcategory category;
  List<Addone> availableAddOne;

  Food(
      {required this.name,
      required this.description,
      required this.imagepath,
      required this.price,
      required this.category,
      required this.availableAddOne});
}

enum Foodcategory { burgers, dessert, drinks, salad, sider }

class Addone {
  final String name;
  final int price;

  Addone({required this.name, required this.price});
}
