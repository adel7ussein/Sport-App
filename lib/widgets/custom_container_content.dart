import 'dart:ui';

import 'package:flutter/material.dart';

class CustomContainerContent extends StatelessWidget {
  CustomContainerContent({super.key, required this.textName,required this.fontSize, this.textColor = Colors.red,this.textDecoration = TextDecoration.none});
  String textName;
  double fontSize;
  Color ? textColor;
  TextDecoration? textDecoration;
  @override
  Widget build(BuildContext context) {
    return Text(
      textName,
      style: Theme.of(context).textTheme.headlineSmall!.copyWith(
        decoration: textDecoration,
          fontSize: fontSize, fontWeight: FontWeight.w600, color: textColor),
    );
  }
}
