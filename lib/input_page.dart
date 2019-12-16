import 'package:bmi_calculator/icon_content_widget.dart';
import 'package:bmi_calculator/result_page.dart';
import 'package:bmi_calculator/reusable_card_widget.dart';
import 'package:bmi_calculator/single_Value_Card.dart';
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
  int height = 180;
  int weight = 60;
  int age = 20;

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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "HEIGHT",
                        style: kLabelTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text(
                            height.toString(),
                            style: kHeavyFontStyle,
                          ),
                          Text("cm"),
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          activeTrackColor: Colors.white,
                          inactiveTrackColor: Color(0xFF8D8E98),
                          thumbColor: Colors.pink,
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        ),
                        child: Slider(
                          value: height.toDouble(),
                          min: 120,
                          max: 220,
                          onChanged: (double value) {
                            setState(() {
                              height = value.round();
                            });
                          },
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
                child: ReusableCard(
                    color: kActiveCardColor,
                    child: SingleValueCard(
                      title: "Weight".toUpperCase(),
                      value: weight,
                      onDecrease: () {
                        setState(() {
                          weight--;
                        });
                      },
                      onIncrease: () {
                        setState(() {
                          weight++;
                        });
                      },
                    )),
              ),
              Expanded(
                child: ReusableCard(
                  color: kActiveCardColor,
                  child: SingleValueCard(
                    title: "Age".toUpperCase(),
                    value: age,
                    onDecrease: () {
                      setState(() {
                        age--;
                      });
                    },
                    onIncrease: () {
                      setState(() {
                        age++;
                      });
                    },
                  ),
                ),
              )
            ]),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ResultPage()));
            },
            child: Container(
              child: Center(
                child: Text(
                  "Calculate".toUpperCase(),
                  style: kLargeButtonTextStyle,
                ),
              ),
              width: double.infinity,
              height: kHeightOfBottomBar,
              margin: EdgeInsets.only(top: 10.0),
              padding: EdgeInsets.only(bottom: 20.0),
              color: kBottomBarColor,
            ),
          )
        ],
      ),
    );
  }
}
