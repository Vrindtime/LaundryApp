import 'package:flutter/material.dart';
import 'package:washing_machine/pages/cart_page.dart';

class CustomAppbarWidget2 extends StatelessWidget {
  const CustomAppbarWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),

        IconButton(
            onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (context)=>const CartPage())),
            icon: const Icon(
              Icons.shop_rounded,
              color: Colors.white,
            )),
      ],
    );
  }
}
