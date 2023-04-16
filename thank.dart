import 'dart:async';
import 'dart:io';
import 'package:lottie/lottie.dart';
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

class Thank extends StatefulWidget {
  const Thank({Key? key}) : super(key: key);

  @override
  State<Thank> createState() => _ThankState();
}

class _ThankState extends State<Thank> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(milliseconds:6000), () {
     exit(0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: Lottie.asset('lib/animations/thank.json'),
        ),
        
      ),
      

    );
  }
}


