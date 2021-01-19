import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Dicee'),
          centerTitle: true,
          backgroundColor: Colors.black,
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
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  int sum = 2;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      leftDiceNumber = Random().nextInt(6) + 1;
                      sum = leftDiceNumber + rightDiceNumber;
                    });
                  },
                  child: Image.asset(
                    'images/dice$leftDiceNumber.png',
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      rightDiceNumber = Random().nextInt(6) + 1;
                      sum = leftDiceNumber + rightDiceNumber;
                    });
                  },
                  child: Image.asset(
                    'images/dice$rightDiceNumber.png',
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "The sum is: $sum",
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 3,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlatButton(
                onPressed: () {
                  setState(() {
                    leftDiceNumber = Random().nextInt(6) + 1;
                    rightDiceNumber = Random().nextInt(6) + 1;
                    sum = leftDiceNumber + rightDiceNumber;
                  });
                },
                child: Text(
                  "Run both!",
                  style: TextStyle(),
                ),
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    side: BorderSide(color: Color.fromRGBO(255, 255, 0, 1))),
              ),
            ],
          )
        ],
      ),
    );
  }
}
