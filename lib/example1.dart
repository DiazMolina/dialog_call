import 'package:dialog_call/num_pad.dart';
import 'package:flutter/material.dart';
class Example1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/data.jpg"), colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2),BlendMode.dstATop))),
      child: Center(
        child: Column(
          children: <Widget>[
            //Opacity(opacity: 0.2,child: Image.asset("assets/images/logo.png",fit: BoxFit.cover,)),
            NumPad()
          ],
        ),
      ),
    );
  }
}
