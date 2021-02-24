import 'package:flutter/material.dart';
import 'package:task_force_challenge/common/constants.dart';

class RoundCheckbox extends StatefulWidget {
  final bool isChecked;
  final double size;
  final double iconSize;
  final Color selectedColor;
  final Color selectedIconColor;

  RoundCheckbox({this.isChecked, this.size = 30, this.iconSize, this.selectedColor, this.selectedIconColor});

  @override
  _RoundCheckboxState createState() => _RoundCheckboxState();
}

class _RoundCheckboxState extends State<RoundCheckbox> {

  bool _isSelected = false;

  @override
  void initState() {
    _isSelected = widget.isChecked ?? false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
        });
      },
      child: AspectRatio(
        aspectRatio: 1,
              child: AnimatedContainer(
          duration: Duration(milliseconds: 500),
          curve: Curves.fastLinearToSlowEaseIn,
          decoration: BoxDecoration(
            color: _isSelected ? widget.selectedColor ?? Colors.blue : Colors.transparent,
            borderRadius: BorderRadius.circular(5.0),
            border: _isSelected ? null : Border.all(
              color: lightGreyColor,
              width: 2.0,
            )
          ),
          width: widget.size,
          height: widget.size,
          child: _isSelected ? Icon(
            Icons.check,
            color: widget.selectedIconColor ?? Colors.white,
            size: widget.iconSize ?? 19,
          ) : null,
        ),
      ),
    );
  }
}