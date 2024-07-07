import 'package:flutter/material.dart';
import 'package:food_delivery_app/homepageitem/description.dart';
import 'package:food_delivery_app/location/manuallocation.dart';
import 'package:food_delivery_app/models/food.dart';
import 'package:food_delivery_app/models/resturant.dart';
import 'package:food_delivery_app/widget/mydrawer.dart';
import 'package:food_delivery_app/widget/sliverappbar.dart';
import 'package:food_delivery_app/widget/tabbar.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(
      length: Foodcategory.values.length,
      vsync: this,
    );

    // TODO: implement i
    // nitState
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  List<Food> _filteredMenuCategory(Foodcategory catagory, List<Food> fullMenu) {
    return fullMenu.where((food) => food.category == catagory).toList();
  }

  List<Widget> getFoodInThisCatagory(List<Food> fullMenu) {
    return Foodcategory.values.map((catagory) {
      List<Food> catagoryMenu = _filteredMenuCategory(catagory, fullMenu);
      return ListView.builder(
          itemCount: catagoryMenu.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text("${catagoryMenu[index].name}"),
            );
          });
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
                MySliverAppBar(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.all(15),
                            child: Divider(
                              endIndent: 25,
                              indent: 25,
                              color: Theme.of(context).colorScheme.secondary,
                            )),
                        Mycurrentlocation(),
                        //food bistarito

                        MyDescription(),
                      ]),
                  title: MyTabBar(tabBarcontorller: tabController),
                ),
              ],
          body: Consumer<Resturant>(
            builder: (context, resturant, child) => TabBarView(
                controller: tabController,
                children: getFoodInThisCatagory(resturant.menu)),
          )),
    );
  }
}
