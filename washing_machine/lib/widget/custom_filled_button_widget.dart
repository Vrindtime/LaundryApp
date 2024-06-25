import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomFilledButton extends StatelessWidget {
  const CustomFilledButton({super.key, required this.text, required this.icon, required this.isFilled});

  final String text;
  final IconData icon;
  final bool isFilled;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.36,
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
      decoration: BoxDecoration(
        color: isFilled? Colors.white:Colors.transparent,
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          (isFilled)?
          Icon(icon,color: const Color.fromARGB(255, 34, 45, 63),)
          :
          Icon(icon,color: Colors.white,),

          
          Text(text,style: GoogleFonts.poppins(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: isFilled?const Color.fromARGB(255, 34, 45, 63):Colors.white,
          ),)
          
        ],
      ),
    );
  }
}