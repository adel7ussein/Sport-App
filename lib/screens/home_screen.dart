import 'package:flutter/material.dart';

import '../widgets/custom_text_name.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text("homepage",style: TextStyle(fontWeight: FontWeight.bold),),centerTitle: true,),

      body:  Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [CustomTextName(textName: 'LEE Jong-san',),CustomTextName(textName: 'Mohammad Alhamad')],)
        ],),
      ),
    );
  }
}


