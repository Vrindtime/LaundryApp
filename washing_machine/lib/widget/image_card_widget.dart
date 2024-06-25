import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:washing_machine/widget/heading_2_widget.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({super.key, required this.img, this.title, this.rating});
  final String img;
  final String? title;
  final int? rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 18),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: .2, color: Colors.grey[200]!),
          borderRadius: BorderRadius.circular(12)),
      child: Stack(
        children: [
          Image.asset('asset/images/laundry.png'),
          Container(
            width: MediaQuery.of(context).size.width * 0.19,
            height: MediaQuery.of(context).size.height * 0.04,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Icon(
                  Icons.star_rounded,
                  size: 30,
                  color: Colors.amber,
                ),
                Text(
                  '$rating.$rating',
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 18),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 1.5,
            child: Heading2(
              text: 'Current Item $title',
            ),
          )
        ],
      ),
    );
  }
}
