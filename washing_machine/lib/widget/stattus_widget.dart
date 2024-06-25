import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:washing_machine/pages/status_page.dart';

class Status extends StatelessWidget {
  const Status({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromRGBO(77, 86, 112, 1),
              Color.fromRGBO(48, 55, 74, 1)
            ],
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 7),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Laundry in progress',
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        'Your Clother will come only in \nthe blink of an eye',
                        style: GoogleFonts.poppins(
                            color: Colors.grey[400],
                            fontWeight: FontWeight.w500,
                            fontSize: 10),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    GestureDetector(
                      child: Text(
                        'CHECK IT!',
                        style: GoogleFonts.poppins(
                            color: const Color.fromARGB(255, 165, 165, 117),
                            fontWeight: FontWeight.w300),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const StatusPage()));
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Image.asset(
                  'asset/images/laundry.png',
                  scale: 20,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
