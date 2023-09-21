import 'package:flutter/material.dart';
import 'DrinkItem.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My App'),
        ),
        body: ListView(children: const [
          DrinkItem(
            itemKorName: '골든 미모사 그린 티',
            itemEngName: 'Golden Moon Tea',
            itemPrice: '6800원',
            itemImg: 'item_drink1.jpeg',
          ),
        ]),
      ),
    );
  }
}
