import 'package:bmi_calculator/icon_content_widget.dart';
import 'package:bmi_calculator/reusable_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const double heightOfBottomBar = 80.0;
const inActiveCardColor = Color(0xFF272A4E);
const activeCardColor = Color(0xFF141A3C);
const bottomBarColor = Color(0xFFFF2E95);

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
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  child: ReusableCard(
                    color: selectedGender == Gender.male
                        ? activeCardColor
                        : inActiveCardColor,
                    child: IconContentWidget(
                      icon: FontAwesomeIcons.mars,
                      label: "Male",
                      color: Color(0xFFD3D3D3),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  child: ReusableCard(
                    color: selectedGender == Gender.female
                        ? activeCardColor
                        : inActiveCardColor,
                    child: IconContentWidget(
                      icon: FontAwesomeIcons.venus,
                      label: "Female",
                      color: Color(0xFFD3D3D3),
                    ),
                  ),
                ),
              )
            ]),
          ),
          Expanded(
            child: Row(children: [
              Expanded(
                child: ReusableCard(color: activeCardColor),
              ),
            ]),
          ),
          Expanded(
            child: Row(children: [
              Expanded(
                child: ReusableCard(color: activeCardColor),
              ),
              Expanded(
                child: ReusableCard(color: activeCardColor),
              )
            ]),
          ),
          Container(
            width: double.infinity,
            height: heightOfBottomBar,
            margin: EdgeInsets.only(top: 10.0),
            color: bottomBarColor,
          )
        ],
      ),
    );
  }
}
