import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
    appBar: AppBar(
     title: Text('Page 2'),
    ),
    body: Center(
      child: RaisedButton(
        child: Text("Tap here"),
        onPressed: () {
          Navigator.pop(context);
       },
      ),
     ),
    );
  }
}