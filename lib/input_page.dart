import 'package:bmi_calculator/icon_content_widget.dart';
import 'package:bmi_calculator/reusable_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Row(children: [
              Expanded(
                child: ReusableCard(
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  color: selectedGender == Gender.male
                      ? kActiveCardColor
                      : kInActiveCardColor,
                  child: IconContentWidget(
                    icon: FontAwesomeIcons.mars,
                    label: "Male",
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  color: selectedGender == Gender.female
                      ? kActiveCardColor
                      : kInActiveCardColor,
                  child: IconContentWidget(
                    icon: FontAwesomeIcons.venus,
                    label: "Female",
                  ),
                ),
              )
            ]),
          ),
          Expanded(
            child: Row(children: [
              Expanded(
                child: ReusableCard(
                  color: kActiveCardColor,
                  child: Column(
                    children: <Widget>[
                      Text(
                        "HEIGHT",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: kLabelColor,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ]),
          ),
          Expanded(
            child: Row(children: [
              Expanded(
                child: ReusableCard(color: kActiveCardColor),
              ),
              Expanded(
                child: ReusableCard(color: kActiveCardColor),
              )
            ]),
          ),
          Container(
            width: double.infinity,
            height: kHeightOfBottomBar,
            margin: EdgeInsets.only(top: 10.0),
            color: kBottomBarColor,
          )
        ],
      ),
    );
  }
}
