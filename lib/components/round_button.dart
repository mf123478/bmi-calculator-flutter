import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.icon,this.onPressed});
  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon,color: Colors.white,),
      onPressed: onPressed,
      elevation: 0.0,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(height: 56.0, width: 56.0),
      fillColor: Color(0xFF4C4E5F),

    );
  }
}