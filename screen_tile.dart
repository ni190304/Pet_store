import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle _getTextStyle2() {
  return GoogleFonts.katibeh(
    textStyle: const TextStyle(
      color: Color.fromARGB(255, 83, 26, 5),
      fontSize: 30,
      fontWeight: FontWeight.normal,
    ),
  );
}

TextStyle _getTextStyle1() {
  return GoogleFonts.cardo(
    textStyle: const TextStyle(
      color: Colors.white,
      fontSize: 12.0,
      fontWeight: FontWeight.bold,
    ),
  );
}



class CartTile extends StatelessWidget {
  final String itemname;
  final String itemprice;
  final String imgpath;
  // ignore: prefer_typing_uninitialized_variables
  final color;
  final void Function()? onPressed1;
  final void Function()? onPressed2;
  final void Function()? onPressed3;

  const CartTile({
    super.key,
    required this.itemname,
    required this.itemprice,
    required this.imgpath,
    required this.color,
    this.onPressed1,
    this.onPressed2,
    this.onPressed3,
  });

  @override
  Widget build(BuildContext context) {

    Color iconButtonColor = Color.fromARGB(255, 0, 0, 0);
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(width: 0.25, color: Colors.black),
          color: color[100],
        ),
        child: Column(
          children: [

            IconButton(
                onPressed: onPressed1, icon: const Icon(Icons.favorite_border_rounded,color: Color.fromARGB(255, 129, 102, 102),)),

            Image.asset(
              imgpath,
              height: 150,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5.0,top: 15.0,left: 12.0),
              child: Center(
                child: Text(
                  itemname,
                  style: _getTextStyle2(),
                ),
              ),
            ),
            Text(
              '\₹$itemprice',
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: MaterialButton(
                onPressed: onPressed2,
                color: color[800],
                child: Text(
                  'ADD TO CART',
                  style: _getTextStyle1(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


