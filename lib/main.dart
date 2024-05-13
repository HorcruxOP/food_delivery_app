import 'package:flutter/material.dart';

import 'package:food_delivery_app/pages/landing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Food Delivery App",
      home: const LandingPage(),
      theme: ThemeData(
        fontFamily: "SFProDisplay",
      ),
    );
  }
}
