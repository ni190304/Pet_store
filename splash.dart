import 'dart:async';
import 'package:lottie/lottie.dart';
import 'package:apna_store/CartAnim2.dart';
import 'package:apna_store/screen.dart';
import 'package:flutter/material.dart';

class NoGlowBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
    BuildContext context, 
    Widget child, 
    AxisDirection axisDirection
  ) {
    return child;
  }
}

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(milliseconds: 4200), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => ScrollConfiguration(
              behavior: NoGlowBehavior(),
              child: const CartAnim2()),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: Lottie.asset('lib/animations/pet8.json'),

          
        ),
        
      ),
      

    );
  }
}
