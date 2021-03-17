import 'package:flutter/material.dart';
import 'package:task_force_challenge/common/constants.dart';
import 'package:task_force_challenge/components/iconButton/icon_button.dart';
import 'package:task_force_challenge/components/leadingButton/leading_button.dart';
import 'package:task_force_challenge/pages/landingPage/components/priority/priority.dart';

class TastDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _buildImage() {
      return AspectRatio(
        aspectRatio: 1.47,
        child: Container(
          color: greyShadeColor2,
        ),
      );
    }

    Widget _buildTaskMethods() {
      return Wrap(

        alignment: WrapAlignment.spaceBetween,
        children: [
          Container(
              child: Priority(
            name: "medium",
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          )),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ButtonIcon(
                  icon: Icons.edit,
                  color: greyShadeColor2,
                  iconSize: 24,
                  onPressed: () {},
                  padding: EdgeInsets.all(5),
                  leftGap: SizedBox(
                    width: 10,
                  )),
              ButtonIcon(
                  icon: Icons.close,
                  color: greyShadeColor2,
                  iconSize: 24,
                  onPressed: () {},
                  padding: EdgeInsets.all(5),
                  leftGap: SizedBox(
                    width: 10,
                  )),
              ButtonIcon(
                  title: 'DONE',
                  color: primaryLightColor,
                  iconSize: 25,
                  onPressed: () {},
                  padding: EdgeInsets.symmetric(vertical: 6, horizontal: 25),
                  leftGap: SizedBox(
                    width: 20,
                  )),
            ],
          ))
        ],
      );
    }

    Widget _buildTitle() {
      return Container(
        margin: EdgeInsets.only(top: 15),
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Text(
          'Buy hand sanitizers',
          style: TextStyle(
              color: primaryColor, fontSize: 27, fontWeight: FontWeight.bold),
        ),
      );
    }

    Widget _buildDescritption() {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Description',
                  style: TextStyle(
                      color: primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
                'Call HB to comfirm with the quantity and the price. remember the TIN number too.',
                style: TextStyle(
                    color: greyShadeColor1,
                    fontSize: 16,
                    fontWeight: FontWeight.w400))
          ],
        ),
      );
    }

    Widget _buildTimeStamps() {
      return Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Wrap(
          spacing: 20,
          children: [
          Text('Created 14 Feb 2021', style: TextStyle(fontSize: 12, color: greyShadeColor1),),
          Text('Modified 14 Feb 2021', style: TextStyle(fontSize: 12, color: greyShadeColor1),),
        ],),
      );
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: primaryLightColor,
      ),
      body: ListView(
        children: [
          _buildImage(),
          _buildTaskMethods(),
          _buildTitle(),
          _buildDescritption(),
          _buildTimeStamps()
        ],
      ),
    );
  }
}
