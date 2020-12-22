import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  NextPage(this.message);
  final String message;

  @override
  Widget build(BuildContext context){
    return Scaffold(
    appBar: AppBar(
     title: Text('Page 2'),
    ),
    body: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(message),
          Center(
            child: FlatButton(
             child: Text("戻る"),
             onPressed: () {
               Navigator.pop(context, "値を返す");
            },
           ),
          ),
        ],
       ),
     ),
    );
  }
}