import 'package:finalpro/product_model.dart';
import 'package:flutter/material.dart';

class favScreen extends StatefulWidget {
  const favScreen({Key? key}) : super(key: key);

  @override
  State<favScreen> createState() => _favScreenState();
}

class _favScreenState extends State<favScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
              childAspectRatio: 2/2,
              crossAxisSpacing: 12),

          itemCount: favproductList.length,
          itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Stack(
                      children: [
                        Image.network(favproductList[index].image!),
                        InkWell(
                          child: Icon(
                              favproductList[index].isFavorite == true
                                  ?Icons.favorite_border_outlined
                                  : Icons.favorite,
                              color: Colors.red),
                          onTap: (() => setState(() {
                            favproductList[index].isFavorite = !favproductList[index].isFavorite! ;
                            favproductList
                                .remove(favproductList[index]);
                          })),
                        ),
                      ]
                  ),
                  SizedBox(height: 20,),
                  Text(favproductList[index].name!,
                    style: TextStyle( fontWeight: FontWeight.w700,
                        fontSize: 18),),
                  Text(favproductList[index].price.toString(),
                    style: TextStyle( fontWeight: FontWeight.w700,
                        fontSize: 15),),

                ],
              ),
            );
          }),

    );
  }
}
