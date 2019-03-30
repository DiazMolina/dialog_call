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
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Call Center"),
          centerTitle: true,
          bottom: TabBar(tabs: [
            Text("A"),
            Text("B"),
            Text("C"),
          ]),
        ),
        body: TabBarView(
          children: <Widget>[
            Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/data.jpg"), colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2),BlendMode.dstATop))),
              child: Center(
                child: Column(
                  children: <Widget>[
                    //Opacity(opacity: 0.2,child: Image.asset("assets/images/logo.png",fit: BoxFit.cover,)),
                    NumPad()
                  ],
                ),
              ),
            ),
            Text("Hola1"),
            Text("hola2")
          ],
        ),
      ),
    );
  }
}
