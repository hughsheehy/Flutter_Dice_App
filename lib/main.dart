import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Text("Hugh's Dice App"),
          backgroundColor: Colors.teal,
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
  int leftdicenumber = 1;
  int rightdicenumber = 1;

  void pushdicebutton(){
    setState(() {
      leftdicenumber = 1 + Random().nextInt(6);
      rightdicenumber = 1 + Random().nextInt(6);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Row(
            children: <Widget>[
              Expanded(
                  child: FlatButton(
                    onPressed: () {
                      pushdicebutton();
                      },
                    child: Image.asset('images/dice$leftdicenumber.png'),
              )),
              Expanded(
                  child: FlatButton(
                    onPressed: () {
                      pushdicebutton();
                    },
                   child: Image.asset('images/dice$rightdicenumber.png'),
              )),
            ],
          ),
        ),
      ],
    );
  }
}
