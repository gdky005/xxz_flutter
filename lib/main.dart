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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Drawer")),
      drawer: _drawer(),
    );
  }

  Widget _drawer() {
    return Drawer(
      child: Column(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.grey),
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(5),
            duration: Duration(seconds: 10),
            curve: Curves.easeInSine,
            child: Container(
              child: Text(""
                  "Text1________________\n"
                  "Text2________________\n"
                  "Text3________________\n"
                  "Text4________________\n"
                  "Text5________________\n"
                  "Text1________________\n"
                  "Text2________________\n"
                  "Text3________________\n"
                  "Text4________________\n"
                  ""),
            ),
          ),
          ListTile(
            leading: Icon(Icons.people_outline),
            title: Text("人群"),
            subtitle: Text("开发者"),
            trailing: Icon(Icons.developer_board),
          ),
        ],
      ),
    );
  }
}
