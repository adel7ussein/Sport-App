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
      height: 100,
      width: 150,
      decoration:  BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                  imagePath
              ))),
    );
  }
}