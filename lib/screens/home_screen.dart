import 'package:flutter/material.dart';

import '../widgets/custom_container_content.dart';
import '../widgets/custom_text_name.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                  Container(
                    height: 100,
                    width: 100,
                    margin: EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(
                        color: Colors.white, // Change the color of the border
                        width: 1.5, // Change the width of the border
                      ),
                    ),
                    child: Center(
                        child: CustomContainerContent(
                      textName: "01",
                      fontSize: 60,
                    )),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.only(right: 5, left: 5, bottom: 80),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(
                        color: Colors.white, // Change the color of the border
                        width: 1.5, // Change the width of the border
                      ),
                    ),
                    child: Center(
                      child: CustomContainerContent(
                        textName: "00",
                        fontSize: 30,
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.only(right: 5, left: 5, bottom: 80),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(
                        color: Colors.white, // Change the color of the border
                        width: 1.5, // Change the width of the border
                      ),
                    ),
                    child: Center(
                      child: CustomContainerContent(
                        textName: "01",
                        fontSize: 30,
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    margin: EdgeInsets.only(left: 10, right: 0),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(
                        color: Colors.white, // Change the color of the border
                        width: 1.5, // Change the width of the border
                      ),
                    ),
                    child: Center(
                      child: CustomContainerContent(
                        textName: "04",
                        fontSize: 60,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 100,
                      width: 150,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                'assets/images/south-korean.jpg',
                              ))),
                    ),
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
                    Container(
                      height: 100,
                      width: 150,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                'assets/images/saudi-arabia.png',
                              ))),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomTextName(textName: 'Saudi Arabia')
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
