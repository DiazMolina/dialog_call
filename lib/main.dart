import 'package:dialog_call/digit_button.dart';
import 'package:dialog_call/num_pad.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Call Center"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            DigitButton(
              onPressed: () {},
              text: "1",
            ),
            NumPad()
          ],
        ),
      ),
    );
  }
}
