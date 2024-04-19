import 'package:flutter/material.dart';

class CustomTextName extends StatelessWidget {
   CustomTextName({
    super.key,
    required this.textName
  });
  String textName;
  @override
  Widget build(BuildContext context) {
    return Text(textName,style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontSize: 20,fontWeight: FontWeight.w600),);
  }
}