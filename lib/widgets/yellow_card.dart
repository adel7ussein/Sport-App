import 'package:flutter/material.dart';

class YellowCard extends StatelessWidget {
   YellowCard({
    super.key,
    required this.visibleValue
  });
 bool visibleValue ;
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visibleValue,
      child: Container(
        margin: const EdgeInsets.only(bottom: 3,right: 1),
        width: 25,
        height: 30,
        decoration:  BoxDecoration(
          color: Colors.yellowAccent,
          borderRadius: BorderRadius.circular(1),
        ),
      ),
    );
  }
}
