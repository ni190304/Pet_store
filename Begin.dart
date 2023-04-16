import 'dart:async';
import 'package:lottie/lottie.dart';
import 'package:apna_store/cart_page.dart';
import 'package:flutter/material.dart';
import 'package:apna_store/screen.dart';

import 'PayAnim.dart';

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

class Begin extends StatefulWidget {
  const Begin({Key? key}) : super(key: key);

  @override
  State<Begin> createState() => _BeginState();
}

class _BeginState extends State<Begin> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(milliseconds: 3000), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => ScrollConfiguration(
              behavior: NoGlowBehavior(),
              child: const Screen()),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 239, 239),
      body: Container(
        child: Center(
          child: Lottie.asset('lib/animations/begin.json'),
        ),
        
      ),
      

    );
  }
}
