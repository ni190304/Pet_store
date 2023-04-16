import 'package:apna_store/fav_page.dart';
import 'package:apna_store/food.dart';
import 'package:apna_store/shop.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';

import 'cart_page.dart';
import 'health.dart';

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
      color: Color.fromARGB(255, 114, 70, 3),
      fontSize: 23,
      fontWeight: FontWeight.bold,
    ),
  );
}

TextStyle _getTextStyle2() {
  return GoogleFonts.katibeh(
    textStyle: const TextStyle(
      color: Color.fromARGB(255, 90, 34, 14),
      fontSize: 55,
      fontWeight: FontWeight.bold,
    ),
  );
}

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  int index = 0;
  final _pageController = PageController();

  final _screens = [
    ScrollConfiguration(behavior: NoGlowBehavior(),child: const Food()),
    ScrollConfiguration(behavior: NoGlowBehavior(),child: const Shoppee()),
    ScrollConfiguration(behavior: NoGlowBehavior(),child: const Health()),
    ScrollConfiguration(behavior: NoGlowBehavior(),child: const Shopp_cart()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 177, 166, 166),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 243, 239, 239),
          leading: Lottie.asset('lib/animations/pet7.json'),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Text(
                "Buy interesting stuff",
                style: _getTextStyle1(),
              ),
              Text(
                "Let's Order!!!",
                style: _getTextStyle2(),
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(
                right: 15.0,
              ),
              child: GestureDetector(
                  onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const Fav_cart();
                      })),
                  child: const Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.black,
                    size: 33,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 15.0,
              ),
              child: GestureDetector(
                  onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const Notifications();
                      })),
                  child: const Icon(
                    Icons.notifications,
                    color: Colors.black,
                    size: 33,
                  )),
            ),
          ],
          toolbarHeight: 90,
        ),
        body: PageView(
          onPageChanged: (value) {
            setState(() {
              index = value;
            });
          },
          controller: _pageController,
          children: _screens,
        ),
        bottomNavigationBar: BottomNavigationBar(
            onTap: (value) {
              setState(() {
                index = value;
                _pageController.animateToPage(index,
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.easeOut);
              });
            },
            currentIndex: index,
            selectedItemColor: const Color.fromARGB(255, 93, 27, 3),
            unselectedItemColor: Colors.black,
            selectedFontSize: 14,
            unselectedFontSize: 15,
            iconSize: 36,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.food_bank),
                  label: 'Food',
                  backgroundColor: Color.fromARGB(255, 243, 239, 239),),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.shopping_bag_sharp,
                  ),
                  label: 'Shoppee',
                  backgroundColor: Color.fromARGB(255, 243, 239, 239),),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.medical_services,
                  ),
                  label: 'Health',
                  backgroundColor: Color.fromARGB(255, 243, 239, 239),),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.shopping_cart,
                  ),
                  label: 'Cart',
                  backgroundColor: Color.fromARGB(255, 243, 239, 239),),
            ]));
  }
}

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Text("No Notifications yet")),
    );
  }
}

class Favorites extends StatelessWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Text("No Favorites yet")),
    );
  }
}
