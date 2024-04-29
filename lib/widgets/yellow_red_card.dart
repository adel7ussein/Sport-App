import 'package:flutter/material.dart';

class YellowRedCard extends StatelessWidget {
   YellowRedCard({
    super.key,
    required this.visibleValue
  });
 bool visibleValue;
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visibleValue,
      child: Container(
        margin: const EdgeInsets.all(3),
        width: 30,
        height: 35,
        decoration:  BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(1),
        ),
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 1),
              width: 22,
              height: 30,
              decoration:  BoxDecoration(
                color: Colors.yellowAccent,
                borderRadius: BorderRadius.circular(1),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 7,top: 6),
              width: 22,
              height: 30,
              decoration:  BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(1),
              ),
            )

          ],
        ),
      ),
    );
  }
}
