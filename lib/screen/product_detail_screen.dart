import 'package:flutter/material.dart';
class ScreenArguments {
  final String title1;
  final String imageurl;

  ScreenArguments(this.title1, this.imageurl);
}
class ProductDetailsScreen extends StatefulWidget {
  // final String id;
  // final String title;
  // final String imageUrl;
  // ProductDetailsScreen({required this.id,required this.title,required this.imageUrl});
  static const routeName='/product-detail';

  //final String ProductID = ModalRoute.of(context)!.settings.arguments as String;

  @override
  _ProductDetailsScreenState createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  // final String id;
  // final String title;
  // final String imageUrl;
  // _ProductDetailsScreenState({required this.id,required this.title,required this.imageUrl});

  @override
  Widget build(BuildContext context) {

    final result = (ModalRoute.of(context)!.settings.arguments) as ScreenArguments;
    return Scaffold(
      appBar: AppBar(
        title: Text("title"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.network(result.imageurl),
          ),
        ],
      ),
    );
  }
}
