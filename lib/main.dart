import 'package:credit_card_app/card_view/card_front_view.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Credit Card App',
      home: CardFrontView()
    );
  }
}
