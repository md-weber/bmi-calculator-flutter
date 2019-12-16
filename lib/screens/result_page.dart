import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/reusable_card_widget.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

const kResultTextStyle = TextStyle(
  color: Color(0xFF24D876),
  fontSize: 25.0,
  fontWeight: FontWeight.bold,
);
const kBMITextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 100.0,
);

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var result = "Normal";
    var bmiResult = "28.0";
    var bmiDescription = "You have a normal body weight. Good job!";

    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Result"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Your Result",
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    result,
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    bmiDescription,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22.0,
                    ),
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: () => Navigator.pop(context),
            title: "Recalculate",
          )
        ],
      ),
    );
  }
}
