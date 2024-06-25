import 'package:flutter/material.dart';
import 'package:washing_machine/widget/item_card_widget.dart';

class RowSlideItemCard extends StatelessWidget {
  const RowSlideItemCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ItemCard(
            icon: Icons.shopify,
            title: 'Dry Clean',
            subtitle: 'Clean wash up \nto the roots',
          ),
          SizedBox(
            width: 20,
          ),
          ItemCard(icon: Icons.add_circle_sharp),
          SizedBox(
            width: 20,
          ),
          ItemCard(icon: Icons.alarm_rounded),
          SizedBox(
            width: 20,
          ),
          ItemCard(icon: Icons.add_circle_sharp),
        ],
      ),
    );
  }
}