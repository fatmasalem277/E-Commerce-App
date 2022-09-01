import 'package:finalpro/product_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class item extends StatelessWidget {
  final ProductModel product;

  const item({
    Key? key,
    required this.product,
}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar : AppBar (
          title : Text ('Details'),
          backgroundColor: Colors.orange,
        ),
      body:
      Column(
        children: [
          Image.network(product.image!),
      Text(product.details!,textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black87),),
      ]
      )
    );
  }
}
