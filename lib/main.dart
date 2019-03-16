import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      home: new MyHomePage(title: '应用程序首页',),
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder> {
        '/a': (BuildContext context) => new MyPage(title: 'A 页面'),
        '/b': (BuildContext context) => new MyPage(title: 'B 页面'),
        '/c': (BuildContext context) => new MyPage(title: 'C 页面'),
        '/d': (BuildContext context) => new MyPage(title: 'D 页面'),
        '/e': (BuildContext context) => new MyPage(title: 'E 页面')
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        actions: <Widget>[
          new Expanded(
            child: new Icon(null),
          ),
          new FlatButton(
            child: new Text(
              'A按钮',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                ),
            ),
            onPressed: () { Navigator.of(context).pushNamed('/a'); },
          ),
          new FlatButton(
            child: new Text('B按钮'),
            onPressed: () { Navigator.of(context).pushNamed('/b'); },
          ),
          new FlatButton(
            child: new Text('C按钮'),
            onPressed: () { Navigator.of(context).pushNamed('/c'); },
          ),
          new FlatButton(
            child: new Text('D按钮'),
            onPressed: () { Navigator.of(context).pushNamed('/d'); },
          ),
          new Expanded(
            child: new Icon(null),
          ),
        ],
      ),
      body: new Row(
        children: <Widget>[
          new RaisedButton(
            child: new Text('A按钮'),
            onPressed: () { Navigator.of(context).pushNamed('/a'); },
          ),
          new RaisedButton(
            child: new Text('B按钮'),
            onPressed: () { Navigator.of(context).pushNamed('/b'); },
          ),
          new RaisedButton(
            child: new Text('C按钮'),
            onPressed: () { Navigator.of(context).pushNamed('/c'); },
          ),
          new RaisedButton(
            child: new Text('D按钮'),
            onPressed: () { Navigator.of(context).pushNamed('/d'); },
          ),
        ],
      )
    );
  }
}

class MyPage extends StatelessWidget {
  MyPage({Key key, this.title}) : super(key: key);
  final String title;

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title)
      ),
    );
  }
}