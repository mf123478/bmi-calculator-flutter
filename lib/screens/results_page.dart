import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusablecard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Results extends StatelessWidget {

  Results({@required this.bmiResult,@required this.resultText,@required this.interpretation});
  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
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
                  'YOUR RESULT',
                  style: kResultTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(resultText.toUpperCase(), style: kTextStyle),
                    Text(
                      bmiResult,
                      style: kResultValueStyle,
                    ),
                    Text(
                      interpretation,
                      style: kEndResult,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            BottomButton(onTap: () {
              Navigator.pop(context);
            },
                buttonText: 'RE-CALCULATE'),
          ],
        ));
  }
}
