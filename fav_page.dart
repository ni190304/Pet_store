import 'package:apna_store/fav_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: camel_case_types
class Fav_cart extends StatelessWidget {
  const Fav_cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Consumer<FavModel>(builder: (context, value, child) {
          return Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Expanded(
                    child: ListView.builder(
                        itemCount: value.favItems.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: const Color(0xfff4c96c),
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      width: 0.75, color: Colors.black)),
                              child: ListTile(
                                leading: Image.asset(
                                  value.favItems[index][2],
                                  height: 120,
                                ),
                                title: Text(
                                  value.favItems[index][0],
                                  style: const TextStyle(
                                      fontSize: 21,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                subtitle: Text(
                                  // ignore: prefer_interpolation_to_compose_strings
                                  '\$' + value.favItems[index][1],
                                  style: const TextStyle(
                                      fontSize: 17, color: Colors.blueGrey),
                                ),
                                trailing: IconButton(
                                  icon: const Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  ),
                                  onPressed: () => Provider.of<FavModel>(
                                          context,
                                          listen: false)
                                      .removeItemToFav(index),
                                ),
                              ),
                            ),
                          );
                        })),
              ],
            ),
          );
        }),
      ),
    );
  }
}
