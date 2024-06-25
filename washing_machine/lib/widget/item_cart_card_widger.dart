// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:washing_machine/widget/heading_2_widget.dart';
import 'package:washing_machine/widget/sub_heading_widget.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 18),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: .2, color: Colors.grey[200]!),
          borderRadius: BorderRadius.circular(12)),
      // ignore: prefer_const_constructors
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 6,vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: const Color.fromARGB(255, 242, 242, 242)
            ),
              child: const Icon(
            Icons.shopify,
            size: 46,
            color: Color.fromARGB(255, 39, 28, 87),
          )),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Heading2(text: 'T-shirt'),
              const SubHeading(text: '\$3/item'),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Heading2(text: '\$6'),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatar(
                            radius: 10,
                            backgroundColor: Color.fromARGB(255, 246, 246, 246),
                            child: Center(child: Icon(Icons.remove, size: 16)),
                          ),
                          Text('2'),
                          CircleAvatar(
                            radius: 10,
                            backgroundColor: Color.fromARGB(255, 39, 28, 87),
                            child: Icon(
                              Icons.add,
                              size: 16,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
