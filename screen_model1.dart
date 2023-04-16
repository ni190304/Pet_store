import 'package:flutter/material.dart';


class CartModel extends ChangeNotifier{
  final List _shopItems1 = [
    ["Happi Dog Chew Zest Appy(25gm)", "99.00", "lib/img/food/f1.png", Colors.blue],
    ["Dog Applesauce & Cinnamon (200g)", "149.00", "lib/img/food/f2.png", Colors.yellow],
    ["Royal Canin Pellet Dog Food (1kg)", "199.00", "lib/img/food/f3.png", Colors.red],
    ["Right4Paws Pet Food (5.4Kg)", "149.00", "lib/img/food/f4.png", Colors.deepPurple],
    ["Purepet Chicken for Dogs (20kg)", "249.00", "lib/img/food/f5.png", Colors.brown],
    ["Pumpkin Dry Dog Food (2.5kg)", "180.00", "lib/img/food/f6.png", Colors.indigo],
    ["Drools Calcium Bone Jar(600g)", "170.00", "lib/img/food/f7.png", Colors.green],
    ["Drools Focus Dog Food (1.2kg)", "150.00", "lib/img/food/f8.png", Colors.orange],
    ["Shivi Pets Growth Food (750g)", "140.00", "lib/img/food/f9.png", Colors.purple],
    ["Toms Pet Munchy Chew Sticks (1kg)", "129.00", "lib/img/food/f10.png", Colors.pink],

  ];

    final List _shopItems2 = [
    ["Petvit Wet Pet Wipes (80 wipes)", "110.00", "lib/img/shop/s1.png", Colors.blue],
    ["Pet Head Cat Shampoo (300 ml)", "249.00", "lib/img/shop/s2.png", Colors.yellow],
    ["Empire Automatic Water Dispenser", "599.00", "lib/img/shop/s3.png", Colors.red],
    ["Pom Dispenser Bottle (500ml)", "299.00", "lib/img/shop/s4.png", Colors.deepPurple],
    ["Metal Pet Cage (Black 36-inch) ", "699.00", "lib/img/shop/s5.png", Colors.brown],
    ["IRIDA Bio Poop Bags (120 Bags)", "99.00", "lib/img/shop/s6.png", Colors.indigo],
    ["Cartxomy Cat Bottle (100ml)", "199.00", "lib/img/shop/s7.png", Colors.green],
    ["EcoSoft Pet Litter Tray (MultiColor)", "200.00", "lib/img/shop/s8.png", Colors.orange],
    ["Licogel Pet Chew Cartoon Toy ", "69.00", "lib/img/shop/s9.png", Colors.purple],
    ["AmazonBasics Airline Travel Bag", "499.00", "lib/img/shop/s10.png", Colors.pink],
  ];

    final List _shopItems3 = [
    ["Pets Empire Toothpaste ", "199.00", "lib/img/health/h1.png", Colors.blue],
    ["Petvit Cleansing Wipes (50 Wipes)", "99.00", "lib/img/health/h2.png", Colors.yellow],
    ["SkyecSyrup for Pets (400ml)", "199.00", "lib/img/health/h3.png", Colors.red],
    ["Venky's RKleen Liver Cleanser", "149.00", "lib/img/health/h4.png", Colors.deepPurple],
    ["WIGGLES Calcium Syrup (200ml)", "120.00", "lib/img/health/h5.png", Colors.brown],
    ["Multivatimin Syrup(200ml)", "170.00", "lib/img/health/h6.png", Colors.indigo],
    ["Medfly Joint(30 Tablets)", "180.00", "lib/img/health/h7.png", Colors.green],
    ["Drools Skin Tablet (400gm)", "199.00", "lib/img/health/h8.png", Colors.orange],
    ["Wiggles Hemp Seed Oil (30ml)", "249.00", "lib/img/health/h9.png", Colors.purple],
    ["Petvit Liver Syrup (100ml)", "220.00", "lib/img/health/h10.png", Colors.pink],
  ];

  final List _cartItems = [];

  get shopItems1 => _shopItems1;

  get shopItems2 => _shopItems2;

  get shopItems3 => _shopItems3;

  get cartItems => _cartItems;


  void addItemToCart1(int index) {
    _cartItems.add(_shopItems1[index]);
    notifyListeners();
  }

    void addItemToCart2(int index) {
    _cartItems.add(_shopItems2[index]);
    notifyListeners();
  }

    void addItemToCart3(int index) {
    _cartItems.add(_shopItems3[index]);
    notifyListeners();
  }

  void removeItemToCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }



  String calcTotal() {
    double totPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totPrice += double.parse(_cartItems[i][1]);
    }
    return totPrice.toStringAsFixed(2);
    notifyListeners();
  }
}
