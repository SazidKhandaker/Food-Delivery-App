import 'package:flutter/material.dart';
import 'package:food_delivery_app/homepageitem/description.dart';
import 'package:food_delivery_app/location/manuallocation.dart';
import 'package:food_delivery_app/widget/mydrawer.dart';
import 'package:food_delivery_app/widget/sliverappbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                  title: Text(""),
                ),
              ],
          body: Container(
            color: Colors.red,
          )),
    );
  }
}
