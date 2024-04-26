import 'dart:ui';

import 'package:flutter/material.dart';

import 'custom_container_content.dart';

class CustomSmallCounter extends StatelessWidget {
  CustomSmallCounter({
    super.key,
    required this.titleContainer,
    this.textDecoration = TextDecoration.none
  });
  String titleContainer;
  TextDecoration? textDecoration;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      margin: const EdgeInsets.only(right: 5, left: 5, bottom: 80),
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(
          color: Colors.white, // Change the color of the border
          width: 1.5, // Change the width of the border
        ),
      ),
      child: Center(
        child: CustomContainerContent(
          textName: titleContainer,
          fontSize: 30,
          textDecoration: textDecoration,
        ),
      ),
    );
  }
}

class CustomBigCounter extends StatelessWidget {
  CustomBigCounter({
    super.key,
    required this.titleContainer
  });
  String titleContainer;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      margin: const EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(
          color: Colors.white, // Change the color of the border
          width: 1.5, // Change the width of the border
        ),
      ),
      child: Center(
          child: CustomContainerContent(
            textName: titleContainer,
            fontSize: 60,
          )),
    );
  }
}
