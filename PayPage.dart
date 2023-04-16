import 'dart:async';
import 'package:lottie/lottie.dart';
import 'package:apna_store/CartAnim2.dart';
import 'package:apna_store/screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:apna_store/thank.dart';
import 'package:provider/provider.dart';
import 'screen_model1.dart';

TextStyle _getTextStyle1() {
  return GoogleFonts.cardo(
    textStyle: const TextStyle(
      color: Color.fromARGB(255, 56, 35, 2),
      fontSize: 35,
      fontWeight: FontWeight.bold,
    ),
  );
}

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

class PayPage extends StatefulWidget {
  const PayPage({Key? key}) : super(key: key);

  @override
  State<PayPage> createState() => _PayPageState();
}

class _PayPageState extends State<PayPage> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(milliseconds: 5000), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute( 
            builder: (context) => ScrollConfiguration(
              behavior: NoGlowBehavior(),
              child: const Thank()),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Consumer<CartModel>(builder: (context, value, child) {
          return Center(child: Text('Your total bill is ₹${value.calcTotal()}',style: _getTextStyle1(),));
        },),
      ),
    );
  }
}
