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
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).colorScheme.background,
      //   title: Text(
      //     "Home",
      //     style: TextStyle(
      //         fontWeight: FontWeight.bold,
      //         fontSize: 18,
      //         color: Theme.of(context).colorScheme.tertiary),
      //   ),
      //   centerTitle: true,
      // ),
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
                MySliverAppBar(
                  child: Text("T1"),
                  title: Text("T2"),
                )
              ],
          body: Container(
            color: Colors.red,
          )),
    );
  }
}
