import 'package:dialog_call/digit_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NumPad extends StatefulWidget {
  @override
  _NumPadState createState() => _NumPadState();
}

class _NumPadState extends State<NumPad> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          controller: controller,
          cursorColor: Colors.green,
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.done,

        ),
        Table(
          children: [
            //TableRow(children: [DigitButton(onPressed: (){},text: "1",)]),
            TableRow(children: ['1', '2', '3'].map(DigitToButton).toList()),
            TableRow(children: ['4', '5', '6'].map(DigitToButton).toList()),
            TableRow(children: ['7', '8', '9'].map(DigitToButton).toList()),
            TableRow(children: ['*', '0', '#'].map(DigitToButton).toList()),
          ],
        ),
        FloatingActionButton(
          onPressed: () async {
            final url = 'tel:${controller.text}';
            if (await canLaunch(url)) {
              await launch(url);
              debugPrint("correcto");
            } else {
              showDialog(context: null,
                  builder: (ctx)=>Text("Fallo :("));
            }
          },
          child: Icon(Icons.phone),
        )
      ],
    );
  }

  DigitButton DigitToButton(String digit) {
    return DigitButton(
        text: digit,
        onPressed: () {
          controller.text = controller.text + digit;
        });
  }
}
