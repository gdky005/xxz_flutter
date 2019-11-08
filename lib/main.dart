import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(color: Colors.white, child: _bodyView()),
    );
  }

  FlatButton flatButton(BuildContext context) {
    return FlatButton(
      textColor: Colors.white,
      color: Theme.of(context).accentColor,
      child: Text("FlatButton"),
      onPressed: () {},
    );
  }

  Widget _bodyView() {
    Widget bodyWidget = PageView.custom(
        scrollDirection: Axis.vertical,
        childrenDelegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            return Center(child: Text("PageView custom 当前是第$index个"));
          },
          childCount: 10,
        ));

    return bodyWidget;
  }
}
