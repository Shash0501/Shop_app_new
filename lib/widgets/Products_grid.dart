import 'package:flutter/material.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/widgets/product_item.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/Products_provider.dart';
class ProductsGrid extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products_provider>(context);
    final loadedProducts = productsData.items;
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: loadedProducts.length,
      itemBuilder: (context,index)=>ProductItem(id: loadedProducts[index].id, title: loadedProducts[index].title, imageUrl: loadedProducts[index].imageUrl),
      gridDelegate : SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,childAspectRatio: 3/2,crossAxisSpacing: 10,mainAxisSpacing: 10
      ),
    );
  }
}