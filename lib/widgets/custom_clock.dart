import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomOclock extends StatelessWidget {
  CustomOclock({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(2.5),
      height: 22,
      width: 22,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage('assets/images/clock.png'))),
    );
  }
}
