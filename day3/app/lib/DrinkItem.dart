import 'package:flutter/material.dart';

class DrinkItem extends StatelessWidget {
  const DrinkItem(
      {Key? key,
      required this.itemKorName,
      required this.itemEngName,
      required this.itemImg,
      required this.itemPrice})
      : super(key: key);

  final String itemKorName;
  final String itemEngName;
  final String itemImg;
  final String itemPrice;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset('assets/$itemImg'),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(itemKorName),
          Text(itemEngName),
        ],
      ),
      subtitle: const Text('6100원'),
    );
  }
}
