import 'package:flutter/material.dart';

class CustomAppbarWidget extends StatelessWidget {
  const CustomAppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //Profile Image
        ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'asset/images/pro_pic.png',
              scale: 3,
            )),
        //search Icon
        const Icon(Icons.search,color: Colors.black54,size: 30,)
      ],
    );
  }
}
