import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubHeading2 extends StatelessWidget {
  const SubHeading2({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
          color: Colors.grey[400],
          fontWeight: FontWeight.w500,
          fontSize: 8),
    );
  }
}