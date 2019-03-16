import 'package:flutter/material.dart';

void main() => runApp(MyApp());

var name = 'k';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "title",
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: new Scaffold(body: new InnerText()),
    );
  }
}

class InnerText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Text(
      "data $name " * 5,
      textAlign: TextAlign.center,
      overflow: TextOverflow.ellipsis,
      textScaleFactor: 2,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontFamily: "arial",
        height: 2,
        decoration: TextDecoration.underline,
        decorationColor: Colors.red,
        decorationStyle: TextDecorationStyle.dashed,
      ),
    );
  }
}
