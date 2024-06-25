import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class Heading extends StatelessWidget {
  String text;
  Heading({
    super.key,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.w700,fontSize: 22
        ),
      ),
    );
  }
}