import 'package:apna_store/fav_model.dart';
import 'package:apna_store/screen_model1.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'intro_page.dart';
// ignore: depend_on_referenced_packages
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

// Future<void> main() async {
//   await Hive.initFlutter();

//   // WidgetsFlutterBinding.ensureInitialized()
//   //     .renderView.configuration.scrollConfiguration.setGlowColor(Colors.transparent);
  

//   runApp(MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CartModel()),
        ChangeNotifierProvider(create: (_) => FavModel()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ScrollConfiguration(
          behavior: NoGlowBehavior(),
           child:const IntroPage())
      ),
      
      
    );
  }
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
