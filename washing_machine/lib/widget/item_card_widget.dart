import 'package:flutter/material.dart';
import 'package:washing_machine/widget/heading_3_widget.dart';
import 'package:washing_machine/widget/sub_heading2_widget.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key, required this.icon, this.title, this.subtitle});
  final IconData icon;
  final String? title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 18),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: .2, color: Colors.grey[200]!),
          borderRadius: BorderRadius.circular(12)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            icon,
            size: 40,
          ),
          (title != null && subtitle != null)
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Heading3(text: title!),
                    SubHeading2(text: subtitle!)
                  ],
                )
              : const SizedBox.shrink()
        ],
      ),
    );
  }
}