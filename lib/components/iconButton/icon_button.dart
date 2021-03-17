import 'package:flutter/material.dart';
import 'package:task_force_challenge/common/constants.dart';

class ButtonIcon extends StatelessWidget {
  IconData? icon = null;
  final String title;
  final Color color;
  final Color iconColor;
  final double iconSize;
  final double size;
  final Color backGroundColor;
  final VoidCallback onPressed;
  final EdgeInsets padding;
  final EdgeInsets margin;
  final double rotate;
  final Widget leftGap;

  ButtonIcon(
      {this.icon,
      this.color = darkColor,
      this.title = '',
      required this.onPressed,
      this.size = 20,
      this.backGroundColor = greyShadeColor1,
      this.iconSize = 18,
      this.iconColor = darkColor,
      this.rotate = 0,
      this.leftGap = const SizedBox(width: 0,),
      this.padding = const EdgeInsets.all(0),
      this.margin = const EdgeInsets.all(0)});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          child: Container(
              margin: margin,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: color,
                border: title != '' ? Border.all(color: primaryColor, width: 2): Border()
              ),
              padding: padding,
              child: InkWell(
                customBorder: CircleBorder(),
                onTap: onPressed,
                child: Transform.rotate(
                  angle: rotate,
                  child: Center(
                    child: title == '' ? Icon(
                      icon,
                      size: iconSize,
                      color: iconColor,
                    ): Text(title, style: TextStyle(color: primaryColor, fontWeight: FontWeight.w500),),
                  ),
                ),
              )),
        ),
        leftGap
      ],
    );
  }
}
