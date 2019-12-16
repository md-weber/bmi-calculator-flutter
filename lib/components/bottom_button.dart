import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final Function onTap;
  final String title;

  const BottomButton({
    Key key,
    @required this.onTap,
    @required this.title,
  }) :  super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            title.toUpperCase(),
            style: kLargeButtonTextStyle,
          ),
        ),
        width: double.infinity,
        height: kHeightOfBottomBar,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        color: kBottomBarColor,
      ),
    );
  }
}
