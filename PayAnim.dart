import 'dart:async';
import 'package:lottie/lottie.dart';
import 'package:apna_store/Begin.dart';
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

class PayAnim extends StatefulWidget {
  const PayAnim({Key? key}) : super(key: key);

  @override
  State<PayAnim> createState() => _PayAnimState();
}

class _PayAnimState extends State<PayAnim> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(milliseconds: 3000), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => ScrollConfiguration(
              behavior: NoGlowBehavior(),
              child: const Begin()),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: Lottie.asset('lib/animations/pay.json'),
        ),
        
      ),
      

    );
  }
}
