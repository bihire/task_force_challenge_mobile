import 'package:flutter/material.dart';
import 'package:task_force_challenge/common/constants.dart';

class CardLeadingTitle extends StatelessWidget {
  final bool noChildPadding;
  final Widget child;
  final String title;
  final Color titleColor;
  final IconData leadingIcon;
  CardLeadingTitle(
      {@required this.child,
      @required this.title,
      this.leadingIcon,
      this.titleColor = const Color(0xFF000000),
      this.noChildPadding = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
                vertical: 10, horizontal: noChildPadding == true ? 16 : 0),
            child: Row(
              children: [
                leadingIcon != null
                    ? Container(
                        padding: EdgeInsets.all(5),
                        child: Icon(leadingIcon, size: 18),
                      )
                    : Container(),
                Container(
                  child: Text(
                    title,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: primaryColor),
                  ),
                )
              ],
            ),
          ),
          child
        ],
      ),
    );
  }
}