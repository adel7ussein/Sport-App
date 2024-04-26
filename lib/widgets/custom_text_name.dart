import 'package:flutter/material.dart';

class CustomTextName extends StatelessWidget {
   CustomTextName({
    super.key,
    required this.textName,
    required this.fontSize,
    this.fontColor = Colors.white,
  });
  String textName;
  double fontSize;
  Color fontColor;
  @override
  Widget build(BuildContext context) {
    return Text(textName,style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontSize: fontSize,fontWeight: FontWeight.w600,color:fontColor ),);
  }
}