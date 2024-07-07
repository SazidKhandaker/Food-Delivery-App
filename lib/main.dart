import 'package:flutter/material.dart';
import 'package:food_delivery_app/authentication/loginpage.dart';
import 'package:food_delivery_app/authentication/registerorlogin.dart';
import 'package:food_delivery_app/authentication/registerpage.dart';
import 'package:food_delivery_app/homepage.dart';
import 'package:food_delivery_app/models/resturant.dart';
import 'package:food_delivery_app/provider/themprovider.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiProvider(providers: [
    //Theme
    ChangeNotifierProvider(create: (context) => Themeprovider()),
    //resturant
    ChangeNotifierProvider(create: (context) => Resturant())
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Provider.of<Themeprovider>(context).themData,
      home: RegisterOrLogin(),
    );
  }
}
