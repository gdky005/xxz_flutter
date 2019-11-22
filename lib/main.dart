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
      appBar: AppBar(title: Text("TabBar 和 TabBarView")),
      body: Container(color: Colors.black, child: _bodyView()),
    );
  }

  Widget _bodyView() {
    Widget bodyWidget = TabControllerPage();
    return bodyWidget;
  }
}

class TabControllerPage extends StatefulWidget {
  @override
  _TabControllerPageState createState() => _TabControllerPageState();
}

class _TabControllerPageState extends State<TabControllerPage>
    with SingleTickerProviderStateMixin {
  var _tabList = [
    Tab(icon: Icon(Icons.looks_one), text: "第一页"),
    Tab(icon: Icon(Icons.looks_two), text: "第二页"),
  ];

  var _tabBarViewList = [
    Center(child: Text("第一页内容")),
    Center(child: Text("第二页内容"))
  ];

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: _tabList.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white30,
      appBar: TabBar(controller: _tabController, tabs: _tabList),
      body: TabBarView(controller: _tabController, children: _tabBarViewList),
    );
  }
}
