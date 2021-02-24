import 'package:flutter/material.dart';
import 'package:task_force_challenge/common/constants.dart';
import 'package:task_force_challenge/components/flatButton/flat_button.dart';

class EmptyContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 70, bottom: 70),
      child: Column(
        children: [
          Text(
            'NOTHING HERE',
            style: TextStyle(
                color: primaryColor, fontSize: 16, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Just like your crush\'s replies',
            style: TextStyle(
                color: lightGreyColor,
                fontSize: 12,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 30,
          ),
          FlatButton(
              color: primaryColor,
              onPressed: () {},
              child: Text(
                'START WITH A NEW TASK',
                style: TextStyle(
                    color: primaryLightColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              )),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
