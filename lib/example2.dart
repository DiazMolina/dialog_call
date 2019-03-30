import 'package:flutter/material.dart';

class Example2 extends StatelessWidget {
  int fibonaci(n) {
    if (n < 2) return n;
    return fibonaci(n - 1) + fibonaci(n - 2);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (ctx, i) => Text(
              fibonaci(i).toString(),
              style: TextStyle(fontSize: 17),
            ));
    /*ListView(
      children: <Widget>[
        Container(height: 40,
            width: 40,
            color: Colors.green,
            child: Text("Hola B")),

      ],
    );*/
  }
}
