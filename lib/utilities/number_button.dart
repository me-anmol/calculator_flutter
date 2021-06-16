import 'package:flutter/material.dart';
import 'package:calculator/utilities/constants.dart';
class NumberButton extends StatelessWidget {
  NumberButton({this.number,this.onTap});
  final String number;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(5.0),
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          color: Colors.tealAccent,
        ),
        child: Center(
          child: Text(
            number.toString(),
            style: kTextStyleMain,
          ),
        ),
      ),
    );
  }
}