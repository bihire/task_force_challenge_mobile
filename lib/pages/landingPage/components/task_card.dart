import 'package:flutter/material.dart';
import 'package:task_force_challenge/common/constants.dart';
import 'package:task_force_challenge/common/sustom_pop_menu.dart';
import 'package:task_force_challenge/components/leadingButton/leading_button.dart';
import 'package:task_force_challenge/components/roundCheckbox/round_checkbox.dart';
import 'package:animations/animations.dart';

class TaskCard extends StatelessWidget {

  void _handleClick(String value) {
    switch (value) {
      case 'Logout':
        break;
      case 'Settings':
        break;
    }
  }
  Widget _buildTaskTitle() {
    return Text(
      '1 Buy hand sanitizers',
      style: TextStyle(
          fontWeight: FontWeight.w600, fontSize: 16, fontFamily: 'Roboto'),
      textAlign: TextAlign.start,
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget _buildTaskCategory() {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xFF495D69),
          ),
          child: Text(
            'medium',
            style: TextStyle(
                color: primaryLightColor,
                fontWeight: FontWeight.w400,
                fontSize: 11,
                fontFamily: 'Roboto'),
            textAlign: TextAlign.start,
          ),
        ),
      ],
    );
  }

  Widget _buildTaskTimeStamp() {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            child: Text(
              'Created 14 Feb 2021',
              style: TextStyle(
                  color: primaryColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 11,
                  fontFamily: 'Roboto'),
              textAlign: TextAlign.start,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          flex: 1,
          child: Container(
            child: Text(
              'Modified 14 Feb 2021',
              style: TextStyle(
                  color: primaryColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 11,
                  fontFamily: 'Roboto'),
              textAlign: TextAlign.start,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Color(0xFFF4F5F6)))),
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ConstrainedBox(
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: AspectRatio(
                    aspectRatio: 1,
                    child: Container(
                        child: ClipRRect(
                      borderRadius: BorderRadius.circular(4.0),
                      child: RoundCheckbox(
                        selectedColor: primaryColor,
                        size: 10,
                      ),
                    ))),
              ),
            ),
            constraints: BoxConstraints(
              minWidth: 40,
              maxWidth: 40,
            ),
          ),
          Expanded(
              child: Container(
                  padding:
                      EdgeInsets.only(top: 0, bottom: 7, left: 10, right: 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildTaskTitle(),
                      SizedBox(
                        height: 10,
                      ),
                      _buildTaskCategory(),
                      SizedBox(
                        height: 15,
                      ),
                      _buildTaskTimeStamp(),
                    ],
                  ))),
          Container(
            child: CustomPopupMenuButton<String>(
              padding: EdgeInsets.all(0),
              offset: Offset(-30, 50),
                icon: Icon(
                  Icons.more_vert_rounded,
                  color: darkColor,
                ),
                onSelected: _handleClick,
            itemBuilder: (BuildContext context) {
              return {'Logout', 'Settings'}.map((String choice) {
                return CustomPopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          ))
          //   LeadingButton(
          //     margin: EdgeInsets.zero,
          //     icon: Icons.more_vert,
          //     iconSize: 20,
          //     onPressed: () {

          //     },
          //   ),
          // )
        ],
      ),
    );
  }
}
