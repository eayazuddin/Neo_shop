import 'dart:ui';
import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  SectionHeader({super.key,
    required this.title,required this.onTap
  });

  String title;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.black
        ),),
        TextButton(onPressed: onTap, child: Text("See All",style: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.w600,
            fontSize: 18
        ),))
      ],

    );

  }
}