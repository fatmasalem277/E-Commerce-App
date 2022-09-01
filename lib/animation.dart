import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
class confitmation extends StatefulWidget {
  const confitmation({Key? key}) : super(key: key);

  @override
  State<confitmation> createState() => _confitmationState();
}

class _confitmationState extends State<confitmation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset('asset/animations/85271-order-confirmed-lower-third.json'),
      ),
    );
  }
}
