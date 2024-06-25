import 'package:flutter/material.dart';
import 'package:washing_machine/components/Scrollable_card_list_widget.dart';
import 'package:washing_machine/components/scrollable_item_row_widget.dart';
import 'package:washing_machine/widget/custom_appbar_widget.dart';
import 'package:washing_machine/widget/heading_widget.dart';
import 'package:washing_machine/widget/section_widget.dart';
import 'package:washing_machine/widget/stattus_widget.dart';
import 'package:washing_machine/widget/sub_heading_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 237, 237, 237),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
                child: SizedBox(
                  width: 400,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      //Profile and search Icon
                      const CustomAppbarWidget(),
                        
                      const SizedBox(
                        height: 40,
                      ),
                      //heading(Clean in one blink)
                      Heading(text: 'Clean in one blink ✨'),
                        
                      //subheading
                      const SubHeading(text: 'We will use all our strength to shorten the time it takes for the laundry to take place'),
                      
                      const SizedBox(
                        height: 20,
                      ),
                      //Container for laundry status
                      const Status(),
                      
                      const SizedBox(
                        height: 20,
                      ),
                      //Caterogry & view all
                      NewSection(
                        text: 'Category',
                      ),
                        
                      const SizedBox(
                        height: 20,
                      ),
                      //row slide view
                      const RowSlideItemCard(),
                        
                      const SizedBox(
                        height: 20,
                      ),
                      //Dry clean laundry & all heading
                      NewSection(
                        text: 'Dry Clean Laundry 🔥',
                      ),
                        
                      const SizedBox(
                        height: 20,
                      ),
                      //scrollable card view
                      const ScrollableCardList()
                    ],
                  ),
                ),
              ),
            ),
          )),
    );
  }
}




