import 'package:flutter/material.dart';
import 'package:task_force_challenge/common/constants.dart';
import 'package:task_force_challenge/components/leadingButton/leading_button.dart';
import 'package:task_force_challenge/pages/landingPage/components/mainList.dart';
import 'package:task_force_challenge/pages/new_task.dart/new_task.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
          child: Stack(children: [
        Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: height * 0.60,
            child: Container(
              color: primaryColor,
            )),
        Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: height - 90,
            child: Container(
              // color: Colors.white,
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Image.asset('assets/Assets_IW_logo.png'),
                  ),
                  Container(
                      child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        child: LeadingButton(
                          color: Colors.transparent,
                          icon: Icons.search,
                          iconColor: primaryLightColor,

                          margin: EdgeInsets.only(right: 10),
                          size: 40, // btnShadow: false
                        ),
                      ),
                      Container(
                        width: 25,
                        height: 21,
                        padding: EdgeInsets.all(2),
                        // color: Colors.blue,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Divider(
                              color: Colors.white,
                              height: 3,
                              thickness: 3,
                            ),
                            Divider(
                              color: Colors.white,
                              height: 3,
                              thickness: 3,
                              indent: 3,
                              endIndent: 3,
                            ),
                            Divider(
                              color: Colors.white,
                              height: 3,
                              thickness: 3,
                              indent: 7,
                              endIndent: 7,
                            )
                          ],
                        ),
                      ),
                    ],
                  ))
                ],
              ),
            )),
        Positioned(
            top: 70,
            left: 15,
            right: 15,
            bottom: 0,
            child: Card(
              color: Colors.white,
              elevation: 5,
              margin: EdgeInsets.only(bottom: 0),
              child: MainList(),
            )),
        Positioned(
          bottom: 30,
          right: 30,
          child: FloatingActionButton(
            child: const Icon(Icons.add),
            backgroundColor: primaryColor,
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => NewTask()));
              
            },
          ),
        ),
        
      ])),
    );
  }
}
