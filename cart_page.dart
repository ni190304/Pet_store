import 'package:apna_store/PayAnim.dart';
import 'package:apna_store/screen_model1.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:apna_store/PayPage.dart';
import 'PayAnim2.dart';

TextStyle _getTextStyle2() {
  return GoogleFonts.katibeh(
    textStyle: const TextStyle(
      color: Color.fromARGB(255, 90, 34, 14),
      fontSize: 25.0,
      fontWeight: FontWeight.bold,
    ),
  );
}

TextStyle _getTextStyle3() {
  return GoogleFonts.katibeh(
    textStyle: const TextStyle(
      color: Colors.black,
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
    ),
  );
}

TextStyle _getTextStyle1() {
  return GoogleFonts.cardo(
    textStyle: const TextStyle(
      color: Color.fromARGB(255, 27, 17, 1),
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  );
}

TextStyle _getTextStyle4() {
  return GoogleFonts.cardo(
    textStyle: const TextStyle(
      color: Color.fromARGB(255, 4, 78, 7),
      fontSize: 15.0,
      fontWeight: FontWeight.bold,
    ),
  );
}

TextStyle _getTextStyle5() {
  return GoogleFonts.cardo(
    textStyle: const TextStyle(
      color: Color.fromARGB(255, 0, 0, 0),
      fontSize: 29,
      fontWeight: FontWeight.bold,
    ),
  );
}

class Shopp_cart extends StatelessWidget {
  const Shopp_cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 243, 239, 239),
        body:
               Consumer<CartModel>(builder: (context, value, child){
            return Column(
              children: [

                
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              Container(
                height: 150,
                width: 150,
                child: Lottie.asset('lib/animations/cart3.json')
                ),
                
                const Padding(padding: EdgeInsets.all(2.0)),

                Text(
              "MY CART",
              style: _getTextStyle5()
            ),

              

            ],
            ),

                Expanded(
                    child: ListView.builder(
                        itemCount: value.cartItems.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 243, 208, 131),
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      width: 0.65, color: Colors.black)),
                              child: ListTile(
                                leading: Image.asset(
                                  value.cartItems[index][2],
                                  height: 210,
                                  width: 80,
                                ),
                                title: Text(
                                  value.cartItems[index][0],
                                  style: _getTextStyle1(),
                                ),
                                subtitle: Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    '\$' + value.cartItems[index][1],
                                    style: _getTextStyle2(),
                                  ),
                                ),
                                trailing: IconButton(
                                  icon: const Icon(
                                    Icons.cancel,
                                    color: Colors.black,
                                  ),
                                  onPressed: () => Provider.of<CartModel>(
                                          context,
                                          listen: false)
                                      .removeItemToCart(index),
                                ),
                              ),
                            ),
                          );
                        })),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.all(24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Total Price',
                            style: _getTextStyle4(),
                          ),
                          Text(
                            '₹${value.calcTotal()}',
                            style: _getTextStyle3(),
                          )
                        ],
                      ),
                      GestureDetector(
                         onTap: () => Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return const PayAnim2();
                    })),
                        
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            children: const [
                              Text(
                                'View Bill',
                                style:
                                    TextStyle(color: Color.fromARGB(255, 224, 233, 224), fontSize: 15),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 16,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            );
          }
          ),
            
            )
          
        );
    
    
  }
}

