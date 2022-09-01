import 'package:finalpro/cart.dart';
import 'package:finalpro/favScreen.dart';
import 'package:finalpro/homeScreen.dart';
import 'package:flutter/material.dart';

class layout extends StatefulWidget {
  const layout({Key? key}) : super(key: key);

  @override
  State<layout> createState() => _layoutState();
}

class _layoutState extends State<layout> {
  int currentIndex=0;
  List<Widget> screens = [
    homeScreen(),
    favScreen(),
    cart(),
  ];
  List<String> titles = [
    'McDonald\'s',
    'Your Favorites',
    'Cart',


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        centerTitle: true,
        title: Text(
          titles[currentIndex]
        ),
        automaticallyImplyLeading: false,

      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.orange,
          backgroundColor: Colors.white,
          elevation: 15,
          currentIndex: currentIndex,
          onTap: (index)
          {
            setState(() {
              currentIndex= index;
            });
            print(index);
          },
          type: BottomNavigationBarType.fixed ,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home" ),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: "Favorites" ),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: "Cart" ),
          ]),

    );
  }
}
