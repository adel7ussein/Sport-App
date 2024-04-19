import 'package:flutter/material.dart';

import '../widgets/custom_container_content.dart';
import '../widgets/custom_counters.dart';
import '../widgets/custom_flag.dart';
import '../widgets/custom_text_name.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "homepage",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTextName(
                  textName: 'LEE Jong-san',
                ),
                CustomTextName(textName: 'Mohamed Alhamad')
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .2,
              child: Row(
                children: [
                  CustomBigCounter(titleContainer: '01',),
                  CustomSmallCounter(titleContainer: '00',),
                  CustomSmallCounter(titleContainer: '01'),
                  CustomBigCounter(titleContainer: '04')
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomFlag(imagePath: 'assets/images/south-korean.jpg',),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomTextName(
                      textName: 'South Korea',
                    ),
                  ],
                ),
                Column(
                  children: [
                    CustomFlag(imagePath: 'assets/images/saudi-arabia.png',),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomTextName(textName: 'Saudi Arabia')
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              width: MediaQuery.of(context).size.width,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(
                  color: Colors.white, // Change the color of the border
                  width: 1.5, // Change the width of the border
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomContainerContent(
                    textName: '00',
                    fontSize: 40,
                    textColor: Colors.white,
                  ),
                  CustomContainerContent(
                    textName: '01',
                    fontSize: 40,
                    textColor: Colors.white,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}



