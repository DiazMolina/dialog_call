import 'package:flutter/material.dart';

class DigitButton extends StatelessWidget {
  final GestureTapCallback onPressed;
  final String text;
  const DigitButton({@required this.onPressed, this.text = ""});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      fillColor: Colors.green,
      elevation: 2.0,
      child: Text(text,style: TextStyle(color: Colors.white,fontSize: 18),),
    );
  }
}
