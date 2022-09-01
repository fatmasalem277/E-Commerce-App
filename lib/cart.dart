import 'package:finalpro/animation.dart';
import 'package:finalpro/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cart/flutter_cart.dart';
class cart extends StatefulWidget {
  var cartitems = FlutterCart();

  @override
  State<cart> createState() => _cartState();
}
class _cartState extends State<cart> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        body: Container(
          child: ListView.builder(itemCount:cartproductList.length,
            itemBuilder: (BuildContext context, int index)
            {
              return Container(
                height: 100,
                child: ListTile(
                  leading: Image.network(cartproductList[index].image!),
                  title: Text(
                    cartproductList[index].name!,
                    style: TextStyle(
                        fontWeight: FontWeight.w700, fontSize: 18),
                  ),
                  subtitle: Text(cartproductList[index].price.toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.w700, fontSize: 15),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      setState(() {
                        cartproductList.removeAt(index);
                      });

                    },
                  ),
                ),

              );
            },
          ),
        ),
        bottomSheet: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text('Total:${cartTotalPrice()}', style:
                TextStyle(fontSize: 30,color: Colors.orange,fontWeight: FontWeight.w600),),
            SizedBox(width: 100,),
            Container(
              constraints: BoxConstraints.tightForFinite(
                width: 100,
                height: 35,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.orange,
              ),
              child: MaterialButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => confitmation()));

              },
                child: Text(
                  'ORDER',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }

}
double cartTotalPrice(){
  double total=0;
  cartproductList.forEach((item) { total += item.price!; });
  return total;
}























