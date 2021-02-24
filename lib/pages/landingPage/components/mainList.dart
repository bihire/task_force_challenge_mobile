import 'package:flutter/material.dart';
import 'package:task_force_challenge/common/constants.dart';
import 'package:task_force_challenge/pages/landingPage/components/task_num_card.dart';

import 'empty_container.dart';
import 'task_card.dart';

class MainList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.only(top: 60, bottom: 30),
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Text('Welcome', style: TextStyle(fontSize: 27,fontWeight: FontWeight.w700, color: primaryColor ),),
          ),
        ),
        SliverToBoxAdapter(
          child: GridView(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10, childAspectRatio: 2),
      children: [
        TaskNumCard(0, 'Tatal Tasks'),
        TaskNumCard(0, 'Active Tasks'),
        TaskNumCard(0, 'Tasks Done'),
        TaskNumCard(0, 'Active High Priority'),
        
      ],
      shrinkWrap: true,
    ),
        ),
        // SliverToBoxAdapter(
        //   child: EmptyContainer(),
        // )
        SliverToBoxAdapter(
          child: TaskCard(),
        )
      ],
    );
  }
}
