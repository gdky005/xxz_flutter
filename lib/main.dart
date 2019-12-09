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
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.grey),
            currentAccountPicture: CircleAvatar(
              child: Image.network("http://gdky005.com/images/avatar.jpg"),
            ),
            accountEmail: Text("gdky005@126.com"),
            accountName: Text("王卿"),
            onDetailsPressed: () {
              print("点击了内容区域");
            },
            arrowColor: Colors.grey,
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
