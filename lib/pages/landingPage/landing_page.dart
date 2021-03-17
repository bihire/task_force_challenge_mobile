import 'package:flutter/material.dart';
import 'package:task_force_challenge/common/constants.dart';
import 'package:task_force_challenge/components/leadingButton/leading_button.dart';
import 'package:task_force_challenge/pages/landingPage/components/mainList.dart';
import 'package:task_force_challenge/pages/new_task.dart/new_task.dart';
import 'package:animations/animations.dart';

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
                          onPressed: () {},
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

// import 'package:flutter/material.dart';
// import 'package:animations/animations.dart';

// /// The demo page for [FadeScaleTransition].
// class FadeScaleTransitionDemo extends StatefulWidget {
//   /// Creates the demo page for [FadeScaleTransition].
//   const FadeScaleTransitionDemo({Key? key}) : super(key: key);

//   @override
//   _FadeScaleTransitionDemoState createState() =>
//       _FadeScaleTransitionDemoState();
// }

// class _FadeScaleTransitionDemoState extends State<FadeScaleTransitionDemo>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;

//   @override
//   void initState() {
//     _controller = AnimationController(
//       value: 0.0,
//       duration: const Duration(milliseconds: 250),
//       reverseDuration: const Duration(milliseconds: 75),
//       vsync: this,
//     )..addStatusListener((AnimationStatus status) {
//         setState(() {
//           // setState needs to be called to trigger a rebuild because
//           // the 'HIDE FAB'/'SHOW FAB' button needs to be updated based
//           // the latest value of [_controller.status].
//         });
//       });
//     super.initState();
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   bool get _isAnimationRunningForwardsOrComplete {
//     switch (_controller.status) {
//       case AnimationStatus.forward:
//       case AnimationStatus.completed:
//         return true;
//       case AnimationStatus.reverse:
//       case AnimationStatus.dismissed:
//         return false;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Fade')),
//       floatingActionButton: AnimatedBuilder(
//         animation: _controller,
//         builder: (BuildContext context, Widget? child) {
//           return FadeScaleTransition(
//             animation: _controller,
//             child: child,
//           );
//         },
//         child: Visibility(
//           visible: _controller.status != AnimationStatus.dismissed,
//           child: FloatingActionButton(
//             child: const Icon(Icons.add),
//             onPressed: () {},
//           ),
//         ),
//       ),
//       bottomNavigationBar: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: <Widget>[
//           const Divider(height: 0.0),
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 8.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 ElevatedButton(
//                   onPressed: () {
//                     showModal<void>(
//                       context: context,
//                       builder: (BuildContext context) {
//                         return _ExampleAlertDialog();
//                       },
//                     );
//                   },
//                   child: const Text('SHOW MODAL'),
//                 ),
//                 const SizedBox(width: 10),
//                 ElevatedButton(
//                   onPressed: () {
//                     if (_isAnimationRunningForwardsOrComplete) {
//                       _controller.reverse();
//                     } else {
//                       _controller.forward();
//                     }
//                   },
//                   child: _isAnimationRunningForwardsOrComplete
//                       ? const Text('HIDE FAB')
//                       : const Text('SHOW FAB'),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class _ExampleAlertDialog extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       content: const Text('Alert Dialog'),
//       actions: <Widget>[
//         TextButton(
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//           child: const Text('CANCEL'),
//         ),
//         TextButton(
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//           child: const Text('DISCARD'),
//         ),
//       ],
//     );
//   }
// }