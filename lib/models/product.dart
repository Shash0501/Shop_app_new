import 'package:flutter/foundation.dart';
class Product{
  final String id;
  final String title;
  late final String description;
  final String imageUrl;
  final double price;
  late bool isfavourite;
  Product({required this.id,required this.title,required this.description,required this.price,required this.imageUrl});
}