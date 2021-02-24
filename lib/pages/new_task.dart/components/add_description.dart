import 'package:flutter/material.dart';
import 'package:task_force_challenge/common/constants.dart';
import 'package:task_force_challenge/components/cardLeadingTitle/card_leading_title.dart';

class AddDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: CardLeadingTitle(
                title: 'Add Descrition',
                child: Container(
                    child: TextField(
                      maxLines: 8,
                      minLines: 5,
                      showCursor: true,
                      autofocus: false,
                      cursorColor: primaryColor,
                      textAlign: TextAlign.left,
                      // controller: searchCtrl,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        isDense: true,
                        hintText: '240 characters',
                        hintStyle: TextStyle(
                          color: lightGreyColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0),
                          borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                        filled: true,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                        fillColor: greyShadeColor2,
                      ),
                    ),
                  ),
              ));
  }
}
