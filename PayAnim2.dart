import 'dart:async';
import 'package:lottie/lottie.dart';
import 'package:apna_store/CartAnim2.dart';
import 'package:apna_store/PayPage.dart';
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

class PayAnim2 extends StatefulWidget {
  const PayAnim2({Key? key}) : super(key: key);

  @override
  State<PayAnim2> createState() => _PayAnim2State();
}

class _PayAnim2State extends State<PayAnim2> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(milliseconds: 4200), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => ScrollConfiguration(
              behavior: NoGlowBehavior(),
              child: const PayPage()),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: Lottie.asset('lib/animations/run.json'),
        ),
        
      ),
      

    );
  }
}
