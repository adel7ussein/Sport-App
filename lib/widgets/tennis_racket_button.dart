import 'package:flutter/material.dart';

import 'custom_text_name.dart';

class TennisRacketButton extends StatelessWidget {
  TennisRacketButton(
      {super.key,
      required this.heightOfButton,
      required this.widthOfButton,
      this.onTap});
  double heightOfButton;
  double widthOfButton;
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Container(
          margin: const EdgeInsets.all(2.5),
          height: heightOfButton,
          width: widthOfButton,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/tennisracket.png'))),
        ));
  }
}
