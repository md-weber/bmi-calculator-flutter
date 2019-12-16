import 'package:flutter/material.dart';

const kButtonBackgroundColor = Color(0xFF4C4F5E);

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;

  const RoundIconButton(
      {Key key, @required this.icon, @required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: CircleBorder(),
      elevation: 2.0,
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      fillColor: kButtonBackgroundColor,
      onPressed: onPressed,
    );
  }
}
