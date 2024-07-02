import 'package:flutter/material.dart';
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
                    children: [],
                  ),
                  title: Text("T2"),
                )
              ],
          body: Container(
            color: Colors.red,
          )),
    );
  }
}
