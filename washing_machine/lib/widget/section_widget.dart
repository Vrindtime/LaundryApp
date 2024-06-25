import 'package:flutter/material.dart';
import 'package:washing_machine/widget/heading_2_widget.dart';
import 'package:washing_machine/widget/sub_heading_widget.dart';

// ignore: must_be_immutable
class NewSection extends StatelessWidget {
  NewSection({
    super.key,
    required this.text
  });
  String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Heading2(text: text),
        const SubHeading(text:'View all')
      ],
    );
  }
}