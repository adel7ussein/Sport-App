import 'package:flutter/material.dart';

import 'custom_clock.dart';

class TimeCounter extends StatelessWidget {
   TimeCounter({
    super.key,
    required this.timerValue,
     required this.isVisible
  });
   bool isVisible;
  String timerValue;
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isVisible,
      child: Column(
        children: [
          const CustomClock(),
          Text(timerValue,style: const TextStyle(fontSize: 30,color: Colors.green,fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}
