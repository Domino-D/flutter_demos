import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "My App",
      debugShowCheckedModeBanner: false,
      home: new MyScaffold(),
    );
  }
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: new Column(
        children: <Widget>[
          new MyAppBar(
            title: new Text(
              "title",
              style: Theme.of(context).primaryTextTheme.title,
            ),
          ),
          new Expanded(
              child: new Center(
                child: new Text(
                  "hello",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.red,
                    decorationColor: Colors.blue
                  ),
                  ),
              ),
            )
        ],
      ),
    );
  }
}

class MyAppBar extends StatelessWidget {
  MyAppBar({this.title});
  final Widget title;
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 90,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
      decoration: new BoxDecoration(color: Colors.blue[500]),
      child: new Row(
        children: <Widget>[
          new IconButton(
            icon: new Icon(Icons.menu),
            onPressed:null,
          ),
          new Expanded(
            child: title,
          ),
          new IconButton(
            icon: new Icon(Icons.search),
            onPressed: null,
          ),
        ],
      ),
    );
  }
}