import 'package:flutter/material.dart';

class CustomContainerContent extends StatelessWidget {
  CustomContainerContent({super.key, required this.textName,required this.fontSize, this.textColor = Colors.red});
  String textName;
  double fontSize;
  Color ? textColor;
  @override
  Widget build(BuildContext context) {
    return Text(
      textName,
      style: Theme.of(context).textTheme.headlineSmall!.copyWith(
        decoration: TextDecoration.underline,
          fontSize: fontSize, fontWeight: FontWeight.w600, color: textColor),
    );
  }
}
