import 'package:flutter/material.dart';


class FavModel extends ChangeNotifier{
  final List _shopItems1 = [
    ["A", "4.00", "lib/img/food/f1.png", Colors.blue],
    ["B", "6.00", "lib/img/food/f2.png", Colors.yellow],
    ["C", "8.00", "lib/img/food/f3.png", Colors.red],
    ["D", "10.00", "lib/img/food/f4.png", Colors.deepPurple],
    ["E", "10.00", "lib/img/food/f5.png", Colors.brown],
    ["F", "10.00", "lib/img/food/f6.png", Colors.indigo],
    ["G", "10.00", "lib/img/food/f7.png", Colors.green],
    ["H", "10.00", "lib/img/food/f8.png", Colors.orange],
    ["I", "10.00", "lib/img/food/f9.png", Colors.purple],
    ["J", "10.00", "lib/img/food/f10.png", Colors.pink],

  ];

    final List _shopItems2 = [
    ["A", "4.00", "lib/img/shop/s1.png", Colors.blue],
    ["B", "6.00", "lib/img/shop/s2.png", Colors.yellow],
    ["C", "8.00", "lib/img/shop/s3.png", Colors.red],
    ["D", "10.00", "lib/img/shop/s4.png", Colors.deepPurple],
    ["E", "10.00", "lib/img/shop/s5.png", Colors.brown],
    ["s", "10.00", "lib/img/shop/s6.png", Colors.indigo],
    ["G", "10.00", "lib/img/shop/s7.png", Colors.green],
    ["H", "10.00", "lib/img/shop/s8.png", Colors.orange],
    ["I", "10.00", "lib/img/shop/s9.png", Colors.purple],
    ["J", "10.00", "lib/img/shop/s10.png", Colors.pink],
  ];

    final List _shopItems3 = [
    ["A", "4.00", "lib/img/health/h1.png", Colors.blue],
    ["B", "6.00", "lib/img/health/h2.png", Colors.yellow],
    ["C", "8.00", "lib/img/health/h3.png", Colors.red],
    ["D", "10.00", "lib/img/health/h4.png", Colors.deepPurple],
    ["E", "10.00", "lib/img/health/h5.png", Colors.brown],
    ["h", "10.00", "lib/img/health/h6.png", Colors.indigo],
    ["G", "10.00", "lib/img/health/h7.png", Colors.green],
    ["H", "10.00", "lib/img/health/h8.png", Colors.orange],
    ["I", "10.00", "lib/img/health/h9.png", Colors.purple],
    ["J", "10.00", "lib/img/health/h10.png", Colors.pink],
  ];

  final List _favItems = [];

  get shopItems1 => _shopItems1;

  get shopItems2 => _shopItems2;

  get shopItems3 => _shopItems3;

  get favItems => _favItems;


  void addItemToFav1(int index) {
    _favItems.add(_shopItems1[index]);
    notifyListeners();
  }

    void addItemToFav2(int index) {
    _favItems.add(_shopItems2[index]);
    notifyListeners();
  }

    void addItemToFav3(int index) {
    _favItems.add(_shopItems3[index]);
    notifyListeners();
  }

  void removeItemToFav(int index) {
    _favItems.removeAt(index);
    notifyListeners();
  }


}
