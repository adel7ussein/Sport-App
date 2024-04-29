import 'package:flutter/material.dart';

class CustomFlag extends StatelessWidget {
  CustomFlag({
    super.key,
    required this.imagePath
  });
  String imagePath;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4),
      height: 80,
      width: 120,
      decoration:  BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                  imagePath
              ))),
    );
  }
}