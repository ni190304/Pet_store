import 'package:lottie/lottie.dart';
import 'package:apna_store/CartAnim1.dart';
import 'package:apna_store/fav_model.dart';
import 'package:apna_store/screen_model1.dart';
import 'package:apna_store/screen_tile.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


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

TextStyle _getTextStyle1() {
  return GoogleFonts.cardo(
    textStyle: const TextStyle(
      color: Color.fromARGB(255, 0, 0, 0),
      fontSize: 29,
      fontWeight: FontWeight.bold,
    ),
  );
}

class Food extends StatelessWidget {
  const Food({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return ScrollConfiguration(behavior: NoGlowBehavior(),child: const CartAnim1());
            },
          ),
        ),
        backgroundColor: const Color(0xfffff8dc),
        child: const Icon(
          Icons.shopping_bag,
          color: Color.fromARGB(255, 47, 6, 6),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 243, 239, 239),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                Container(
                  height: 150,
                  width: 150,
                  child: Lottie.asset('lib/animations/pet3.json')
                  ),
                  
                  const Padding(padding: EdgeInsets.all(2.0)),

                  Text(
                "PET FOOD",
                style: _getTextStyle1()
              ),

                

              ],
            ),
            
            Expanded(child: Consumer<CartModel>(
              builder: (context, value, child) {
                return GridView.builder(
                    itemCount: value.shopItems1.length,
                    padding: const EdgeInsets.all(12),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1 / 2.2,
                    ),
                    itemBuilder: (context, index) {
                      return CartTile(
                        itemname: value.shopItems1[index][0],
                        itemprice: value.shopItems1[index][1],
                        imgpath: value.shopItems1[index][2],
                        color: value.shopItems1[index][3],
                        onPressed2: () {
                          const text = "Added to cart successfully";
                          const snackbar = SnackBar(
                            backgroundColor: Color.fromARGB(255, 42, 1, 1),
                            content: Text(
                              text,
                              style: TextStyle(
                                  color: Colors.white),
                            ),
                            duration: Duration(milliseconds: 500),
                          );

                          ScaffoldMessenger.of(context).showSnackBar(snackbar);

                          Provider.of<CartModel>(context, listen: false)
                              .addItemToCart1(index);
                        },
                        onPressed1: () {
                          const text = "Added to favorites successfully";
                          const snackbar = SnackBar(
                            backgroundColor: Color.fromARGB(255, 220, 102, 102),
                            content: Text(
                              text,
                              style: TextStyle(
                                  color: Colors.white),
                            ),
                            duration: Duration(milliseconds: 500),
                          );

                          ScaffoldMessenger.of(context).showSnackBar(snackbar);

                          Provider.of<FavModel>(context, listen: false)
                              .addItemToFav1(index);
                        },
                         onPressed3: (){
                          Provider.of<FavModel>(context,listen: false)
                          .removeItemToFav(index);
                        }
                      );
                    });
              },
            )),
          ],
        ),
      ),
    );
  }
}
