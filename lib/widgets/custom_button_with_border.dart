import 'package:flutter/material.dart';

import 'custom_text_name.dart';

class CustomButtonWithBorder extends StatelessWidget {
  CustomButtonWithBorder({
    super.key,
    required this.backGroundFontColor,
    required this.fontColor,
    required this.textName,
    required this.heightOfButton,
    required this.widthOfButton,
    required this.borderColor,
  });
  Color? backGroundFontColor;
  Color fontColor;
  String textName;
  double heightOfButton;
  double widthOfButton;
  Color borderColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {},
        child: Container(
          margin: const EdgeInsets.all(2.5),
          height: heightOfButton,
          width: widthOfButton,
          decoration: BoxDecoration(
              border: Border.all(
                color: borderColor, // Change the color of the border
                width: .5, // Change the width of the border
              ),
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
