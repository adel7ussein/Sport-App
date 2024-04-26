import 'package:flutter/material.dart';

import 'custom_text_name.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key,
      required this.backGroundFontColor,
      required this.fontColor,
      required this.textName,
      required this.heightOfButton,
      required this.widthOfButton,
        this.fontSize = 13,
        this.onTap
      });
  Color? backGroundFontColor;
  Color fontColor;
  String textName;
  double heightOfButton;
  double widthOfButton;
  double fontSize ;
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          margin: const EdgeInsets.all(2.5),
          height: heightOfButton,
          width: widthOfButton,
          decoration: BoxDecoration(
              color: backGroundFontColor,
              borderRadius: BorderRadius.circular(4)),
          child: Center(
            child: CustomTextName(
              textName: textName,
              fontSize: fontSize,
              fontColor: fontColor,
            ),
          ),
        ));
  }
}
