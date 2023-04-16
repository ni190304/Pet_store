import 'dart:async';
import 'package:lottie/lottie.dart';
import 'package:apna_store/CartAnim2.dart';
import 'package:apna_store/cart_page.dart';
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

class CartAnim1 extends StatefulWidget {
  const CartAnim1({Key? key}) : super(key: key);

  @override
  State<CartAnim1> createState() => _CartAnim1State();
}

class _CartAnim1State extends State<CartAnim1> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(milliseconds: 3000), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => ScrollConfiguration(
              behavior: NoGlowBehavior(),
              child: const Shopp_cart()),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 239, 239),
      body: Container(
        child: Center(
          child: Lottie.asset('lib/animations/cart.json'),
        ),
        
      ),
      

    );
  }
}
