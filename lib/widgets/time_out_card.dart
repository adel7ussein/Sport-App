import 'package:flutter/material.dart';

import 'custom_container_content.dart';

class TimeOutCard extends StatelessWidget {
   TimeOutCard({
    super.key,
    required this.visibleValue
  });
bool visibleValue;
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visibleValue,
      child: Container(
        height: 55,
        width: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.black45, // Change the color of the border
            width: 1.5, // Change the width of the border
          ),
        ),
        child: Center(
            child: CustomContainerContent(
          textName: 'Time-out',
          fontSize: 11,
          textColor: Colors.black,
        )),
      ),
    );
  }
}
