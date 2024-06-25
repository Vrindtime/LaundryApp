import 'package:flutter/material.dart';
import 'package:washing_machine/widget/image_card_widget.dart';

class ScrollableCardList extends StatelessWidget {
  const ScrollableCardList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 5,
      itemBuilder: (context, index) => Column(
        children: [
          ImageCard(img: 'NIL',title: '$index',rating: index,),
          const SizedBox(height: 20)
        ],
      ),
    );
  }
}