import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:washing_machine/widget/custom_appbar_3_widget.dart';
import 'package:washing_machine/widget/heading_2_widget.dart';
import 'package:washing_machine/widget/item_cart_card_widger.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 237, 237, 237),
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: SizedBox(
                width: 400,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    //Profile and search Icon
                    const CustomAppbarWidget3(),

                    const SizedBox(
                      height: 40,
                    ),

                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.62,
                      child: ListView.builder(
                        itemCount: 10,
                        itemBuilder: (context, index) => const Column(
                          children: [CartItemCard(), SizedBox(height: 20)],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(22),
                    topRight: Radius.circular(22),
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Heading2(text: 'Total Price(4):'),
                          Heading2(text: '\$46,00')
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        // padding: EdgeInsets.symmetric(horizontal: 130,vertical: 10),
                        width: 400,
                        height: 50,
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color.fromRGBO(77, 86, 112, 1),
                                  Color.fromRGBO(48, 55, 74, 1)
                                ],
                                tileMode: TileMode.clamp),
                            borderRadius: BorderRadius.circular(12)),
                        child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Checkout ',
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                            const Icon(Icons.fingerprint_outlined,color: Colors.white,)
                          ],
                        )),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
