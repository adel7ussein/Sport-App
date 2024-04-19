import 'package:flutter/material.dart';

class CustomContainerContent extends StatelessWidget {
  CustomContainerContent({super.key, required this.textName,required this.fontSize});
  String textName;
  double fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(
      textName,
      style: Theme.of(context).textTheme.headlineSmall!.copyWith(
          fontSize: fontSize, fontWeight: FontWeight.w600, color: Colors.red),
    );
  }
}
