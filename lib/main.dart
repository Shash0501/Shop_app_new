import 'dart:ui';
import 'package:shop_app/screen/product_detail_screen.dart';
import 'package:flutter/material.dart';
import 'screen/product_overview_screen.dart';
import 'package:shop_app/widgets/product_item.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MY SHOP",
      theme: ThemeData(
        fontFamily: 'Lato',
        brightness: Brightness.dark,
      ),
      home: ProductsOverviewScreen(),
      routes: {
        ProductDetailsScreen.routeName : (context) => ProductDetailsScreen(),
      },
    );
  }
}
class MyHomepage extends StatefulWidget {
  const MyHomepage({Key? key}) : super(key: key);

  @override
  _MyHomepageState createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SHOP"),
        centerTitle: true,
      ),
    );
  }
}
