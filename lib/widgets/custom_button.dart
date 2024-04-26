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
      });
  Color? backGroundFontColor;
  Color fontColor;
  String textName;
  double heightOfButton;
  double widthOfButton;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {},
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
              fontSize: 12,
              fontColor: fontColor,
            ),
          ),
        ));
  }
}
