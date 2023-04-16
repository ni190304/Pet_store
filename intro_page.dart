import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:apna_store/splash.dart';

TextStyle _getTextStyle1() {
  return GoogleFonts.cardo(
    textStyle: const TextStyle(
      color: Color.fromARGB(255, 85, 27, 4),
      fontSize: 42,
      fontWeight: FontWeight.bold,
    ),
  );
}

TextStyle _getTextStyle2() {
  return GoogleFonts.katibeh(
    textStyle: const TextStyle(
      color: Colors.black,
      fontSize: 38,
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


class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 239, 239),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Lottie.asset('lib/animations/pet4.json'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60.0),
                child: Text("We deliver pet accessories at your doorstep",
                    textAlign: TextAlign.center,
                    style: _getTextStyle1()
                   ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 229, 174, 55),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)
                    )

                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> ScrollConfiguration
                    (behavior: NoGlowBehavior(),
                      child: const Splash())));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      "GET STARTED",
                      style: _getTextStyle2(),

                      )
                    ),
                  ),
                ),
            ]
              ),
        )
          ),
        );
      
    
  }
}
