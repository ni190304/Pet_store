import 'dart:async';
import 'package:lottie/lottie.dart';
import 'package:apna_store/Begin.dart';
import 'package:apna_store/PayAnim.dart';
import 'package:apna_store/cart_page.dart';
import 'package:flutter/material.dart';
import 'package:apna_store/screen.dart';

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

class CartAnim2 extends StatefulWidget {
  const CartAnim2({Key? key}) : super(key: key);

  @override
  State<CartAnim2> createState() => _CartAnim2State();
}

class _CartAnim2State extends State<CartAnim2> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(milliseconds: 3000), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => ScrollConfiguration(
              behavior: NoGlowBehavior(),
              child: const PayAnim()),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 239, 239),
      body: Container(
        child: Center(
          child: Lottie.asset('lib/animations/cart2.json'),
        ),
        
      ),
      

    );
  }
}
