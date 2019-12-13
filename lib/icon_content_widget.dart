import 'package:flutter/material.dart';

class IconContentWidget extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  const IconContentWidget(
      {Key key, @required this.icon, @required this.label, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
          color: Colors.white,
        ),
        SizedBox(height: 15.0),
        Text(
          label,
          style: TextStyle(
            fontSize: 18.0,
            color: color,
          ),
        )
      ],
    );
  }
}
