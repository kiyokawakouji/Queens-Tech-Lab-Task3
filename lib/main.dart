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
  String sentence;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Center(
           child: FlatButton(
             child: Text("次へ"),
           onPressed: () async {
            final result = await Navigator.push(
              context,
              MaterialPageRoute(       // 遷移先のページ("message")
                  builder: (context) => NextPage("メッセージ"),
              ),
            );
            sentence = result; // 画面に出力
            print(result); // consoleに出力
           },
          ),
         ),
        ],
       ),
      ),
    );
  }
}
