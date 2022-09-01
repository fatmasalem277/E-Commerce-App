import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:finalpro/logIn.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), (){
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return Login();
      }));
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body:AnimatedSplashScreen(
          splash: Image.asset('asset/splash.png'),
          nextScreen: Login(),
      splashTransition: SplashTransition.scaleTransition,)
    );
  }
}
