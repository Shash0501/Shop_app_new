import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/screen/product_detail_screen.dart';

class ProductItem extends StatefulWidget {
  final String id;
  final String title;
  final String imageUrl;
  ProductItem({required this.id,required this.title,required this.imageUrl});
  @override
  _ProductItemState createState() => _ProductItemState(id: id,title: title,imageUrl: imageUrl);
}

class _ProductItemState extends State<ProductItem> {

  final String id;
  final String title;
  final String imageUrl;
  _ProductItemState({required this.id,required this.title,required this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: GridTile(
        child: GestureDetector(
            onTap: (){
              Navigator.of(context).pushNamed(ProductDetailsScreen.routeName,arguments: ScreenArguments(id, imageUrl));
              //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProductDetailsScreen()));
            },
            child: Image.network(imageUrl,fit: BoxFit.cover,)),
        footer: GridTileBar(
          leading: IconButton(
            icon: Icon(Icons.favorite),
            onPressed: (){},),
          title: Text(title,textAlign: TextAlign.center,),
          trailing: IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: (){},
          ),
          backgroundColor: Colors.black54,
        ),
      ),
    );
  }
}
