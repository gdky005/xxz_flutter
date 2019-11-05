import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      showPerformanceOverlay: true,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            ListTile(title: Text('标题')),
            ListTile(
              title: Text('标题 2 '),
              subtitle: Text('副标题 2'),
            ),
            ListTile(
              title: Text('标题 3（字体更小）'),
              subtitle: Text('副标题 3'),
              dense: true,
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text('标题 4（前面带星星）'),
            ),
            ListTile(
              title: Text('标题 5（左边有箭头）'),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            ListTile(
              title: Text('标题 6（边距为 0）'),
              trailing: Icon(Icons.keyboard_arrow_right),
              contentPadding: EdgeInsets.symmetric(
                  horizontal: 0), //设置内容边距，默认是 16，但我们在这里设置为 0
            ),
            ListTile(
              title: Text('标题 7 （选中状态）'),
              trailing: Icon(Icons.keyboard_arrow_right),
              selected: true,
            ),
            ListTile(
              title: Text('标题 8 （点击事件）'),
              onTap: () {
                print("点击了");
              },
              onLongPress: () {
                print("长按了");
              },
            ),
            ListTile(
              title: Text('标题 9 （禁用状态）'),
              onTap: () {
                // this will not get called
              },
              enabled: false,
            ),
          ],
        ),
      ),
//      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
//      floatingActionButton: FloatingActionButton(
//        onPressed: () => _incrementCounter(),
//        child: Icon(Icons.favorite),
//      ),
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
}
