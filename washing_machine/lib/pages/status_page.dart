import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:washing_machine/widget/custom_appbar_2_widget.dart';
import 'package:washing_machine/widget/custom_filled_button_widget.dart';
import 'package:washing_machine/widget/sub_heading_widget.dart';
import 'package:lottie/lottie.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromRGBO(77, 86, 112, 1),
                Color.fromRGBO(48, 55, 74, 1)
              ],
              tileMode: TileMode.clamp),
        ),
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              const SizedBox(
                width: 400,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                  child: CustomAppbarWidget2(),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
                child: SizedBox(
                  width: 400,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Laundry in progress',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 26),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const SubHeading(
                          text:
                              'Please wait with a cup of coffee and a piece of newspaper. Your clothes will come only in a the blink of an eye'),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomFilledButton(
                            icon: Icons.punch_clock,
                            text: 'By Time',
                            isFilled: true,
                          ),
                          CustomFilledButton(
                            icon: Icons.list,
                            text: 'By Clothes',
                            isFilled: false,
                          ),
                        ],
                      ),
                      
                      Lottie.asset(
                        height: MediaQuery.of(context).size.height * 0.4,
                        'asset/Lottie/washing_machine.json',
                      ),
                      
                      Lottie.asset(
                        height: MediaQuery.of(context).size.height * 0.2,
                        'asset/Lottie/loading.json',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
