import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {

  BottomButton({@required this.onTap,@required this.buttonText});

  final Function onTap;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(bottom: 15.0),
        child: Center(child: Text(buttonText,style: kLargeButtonStyle,),),
        margin: EdgeInsets.only(top: 10.0),
        color: kBottomContainerColour,
        height: kBottomContainerHeight,
        width: double.infinity,
      ),
    );
  }
}