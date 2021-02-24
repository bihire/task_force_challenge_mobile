import 'package:flutter/material.dart';
import 'package:task_force_challenge/common/constants.dart';
import 'package:task_force_challenge/components/cardLeadingTitle/card_leading_title.dart';

class AddImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: CardLeadingTitle(
                title: 'Add image',
                child: Container(
                  color: greyShadeColor2,
                  height: 130,
                  child: Center(
                    child: Text(
                      'Tap to add Image',
                      style: TextStyle(
                          color: lightGreyColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ));
  }
}
