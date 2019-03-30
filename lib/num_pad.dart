import 'package:dialog_call/digit_button.dart';
import 'package:flutter/material.dart';

class NumPad extends StatefulWidget {
  @override
  _NumPadState createState() => _NumPadState();
}

class _NumPadState extends State<NumPad> {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: ['1', '2', '3'].map(DigitToButton).toList()),
        TableRow(children: ['4', '5', '6'].map(DigitToButton).toList()),
        TableRow(children: ['7', '8', '9'].map(DigitToButton).toList()),
        TableRow(children: ['*', '0', '#'].map(DigitToButton).toList()),
      ],
    );
  }

  DigitButton DigitToButton(String digit) {
    return DigitButton(text: digit, onPressed: () {});
  }
}
