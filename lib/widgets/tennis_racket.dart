import 'package:flutter/material.dart';

class CustomTennisRacket extends StatelessWidget {
   CustomTennisRacket({
    super.key,
    required this.visibleValue
  });
  bool visibleValue;
  @override
  Widget build(BuildContext context) {
    return Visibility(
        visible: visibleValue,
        child: Container(
          height: 30,
          width: 30,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                      'assets/images/tennisracket.png'))),
        ));
  }
}
