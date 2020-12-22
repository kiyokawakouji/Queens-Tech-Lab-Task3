import 'package:flutter/material.dart';
import 'package:queens_tech_lab_task3/next_page.dart';

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
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Page 1'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title, this.text}) : super(key: key);

  final String title;
  final String text;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Tap here"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(       // 遷移先のページ
                  builder: (context) => NextPage(),
              ),
            );
          },
        ),
      ),
    );
  }
}
