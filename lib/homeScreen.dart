import 'package:finalpro/details_screen.dart';
import 'package:finalpro/product_model.dart';
import 'package:flutter/material.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
        childAspectRatio: 2/2,
        crossAxisSpacing: 12),

        itemCount: mainproductList.length,
          itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=> item(product: mainproductList[index],),
                  ));},
              child: Column(
                children: [
                  Container(
                    height: 80,
                    child: Stack(
                    children: [
                      Image.network(mainproductList[index].image!),
                      InkWell(
                        child: Icon(
                          mainproductList[index].isFavorite == true
                              ?Icons.favorite_border_outlined
                              : Icons.favorite,
                          color: Colors.red),
                        onTap: (() => setState(() {
                          mainproductList[index].isFavorite = !mainproductList[index].isFavorite! ;
                          favproductList.add(mainproductList[index]);
                        })),
                      ),
                      ],
                    ),
                  ),
                  Text(mainproductList[index].name!,
                   style: TextStyle( fontWeight: FontWeight.w700,
                   fontSize: 16),),
                  Container(
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(mainproductList[index].price.toString(),
                            style: TextStyle( fontWeight: FontWeight.w700,
                                fontSize: 14),),
                        SizedBox(width: 2,),
                      ],
                    ),
                  ),
                      Container(
                        constraints: BoxConstraints.tightForFinite(
                          width: 150,
                          height: 35,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.orange,
                        ),
                        child: MaterialButton(onPressed: (){
                          cartproductList.add(mainproductList[index]);
                        },
                            child: Text(
                              'Add to cart',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                              ),
                            ),
                      ),
                    ],
                  ),
            )
          );
          }),
    );
  }
}
