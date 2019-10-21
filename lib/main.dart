import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // 这个 Widget 是程序的根节点
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // 当前应用的 主题，会包含一些颜色样式
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter New IOS'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // StatefulWidget 中所有的变量都必须是 final，否则编译器会有警告。
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // setState 里面的内容发生改变会通知 Flutter 的框架，Flutter 框架然后通知
      // 当前组件调用 build 重新构建, 从而显示最新的值。
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // 每次重新调用 setState, 该方法都会执行。
    // Flutter 框架对再次运行该 build 方法进行了优化，可以更快的显示，而不用单独更改其内部的小部件的实例。
    return Scaffold(
      appBar: AppBar(
        // 获取 MyHomePage 里面的 title，可以在 _MyHomePageState 中直接使用 widget.title。widget 表示 MyHomePage 的实例。
        title: Text(widget.title),
      ),
      body: Center(
        // Center 是一个可以让其子内容/组件居中的组件。
        child: Column(
          // 设置一个竖向排列的布局。
          mainAxisAlignment: MainAxisAlignment.center, // 每一行居中
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter', // 显示当前的计数值
              style: Theme.of(context).textTheme.display1, // 字的颜色默认样式
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // 最后这个逗号，可以使自动格式化效果更好。
    );
  }
}
