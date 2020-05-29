import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          title:Center(child: Text('പകിട'),),
          backgroundColor: Colors.redAccent,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdiceno = 1;
  int rightdiceno=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  leftdiceno = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$leftdiceno.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  rightdiceno = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$rightdiceno.png'),
            ),
          ),
        ],
      ),
    );
  }
}
