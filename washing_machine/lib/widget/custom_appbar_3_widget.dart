import 'package:flutter/material.dart';
import 'package:washing_machine/pages/cart_page.dart';
import 'package:washing_machine/widget/heading_widget.dart';

class CustomAppbarWidget3 extends StatelessWidget {
  const CustomAppbarWidget3({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.arrow_back,
              color: Color.fromARGB(255, 39, 28, 87),
            )),

        Heading(text: 'Cart'),

        IconButton(
            onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (context)=>const CartPage())),
            icon: const Icon(
              Icons.shop_rounded,
              color: Color.fromARGB(255, 39, 28, 87),
            )),
      ],
    );
  }
}
