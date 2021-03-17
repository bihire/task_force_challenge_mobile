import 'package:flutter/material.dart';
import 'package:task_force_challenge/common/constants.dart';

class Priority extends StatelessWidget {
  final String name;
  final EdgeInsets margin;

  Priority({
    required this.name,
    this.margin = EdgeInsets.zero,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xFF495D69),
      ),
      child: Text(
        name,
        style: TextStyle(
            color: primaryLightColor,
            fontWeight: FontWeight.w400,
            fontSize: 11,
            fontFamily: 'Roboto'),
        textAlign: TextAlign.start,
      ),
    );
  }
}
