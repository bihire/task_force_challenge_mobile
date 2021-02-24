import 'package:flutter/material.dart';
import 'package:task_force_challenge/common/constants.dart';
import 'package:task_force_challenge/components/cardLeadingTitle/card_leading_title.dart';

import 'components/add_description.dart';
import 'components/add_image.dart';
import 'components/add_title.dart';

class NewTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryLightColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: primaryLightColor,
      ),
      body: ListView(
        padding: EdgeInsets.only(bottom: 70),
        children: [
          Container(
            margin: EdgeInsets.only(top: 40, bottom: 20),
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Text(
              'New task',
              style: TextStyle(fontSize: 27, fontWeight: FontWeight.w700, color: primaryColor),
            ),
          ),
          AddImage(),
          SizedBox(height: 20,),
          AddTitle(),
          SizedBox(height: 20,),
          AddDescription(),
          SizedBox(height: 40,),
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: FlatButton(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    color: primaryColor,
                    onPressed: () {},
                    child: Text(
                      'CREATE TASK',
                      style: TextStyle(
                          color: primaryLightColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
