import 'package:flutter/material.dart';
import 'package:task_force_challenge/common/constants.dart';

class TaskNumCard extends StatelessWidget {
  final String label;
  final int number;
  TaskNumCard(this.number, this.label);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 3),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 0,
            blurRadius: 3,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$number',
            style: TextStyle(
                color: yellowColor, fontSize: 25, fontWeight: FontWeight.w600),
          ),
          Text(
            label,
            style: TextStyle(
                color: darkColor, fontSize: 12, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
