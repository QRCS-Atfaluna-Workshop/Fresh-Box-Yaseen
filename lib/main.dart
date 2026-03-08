import 'package:flutter/material.dart';
import 'package:fresh_box/ui/screen/cart_screen.dart';
import 'package:fresh_box/ui/screen/popular_food_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Montserrat'
      ),
      home: CartScreen()
    );
  }
}
