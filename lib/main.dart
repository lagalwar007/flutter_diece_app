import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
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
  int rightDiceNumberEnd = 1;


  void updateRandomDieceNum(){
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber =  Random().nextInt(6) + 1;
    rightDiceNumberEnd =  Random().nextInt(6) + 1;
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: (){
                setState(() {
                  updateRandomDieceNum();
                });
                print('Left button ===> $leftDiceNumber');
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              child: Image.asset('images/dice$rightDiceNumber.png'),
              onPressed: (){
                setState(() {
                  updateRandomDieceNum();
                });
                print('Right button ====> $rightDiceNumber');
              },
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              child: Image.asset('images/dice$rightDiceNumberEnd.png'),
              onPressed: (){
                setState(() {
                  updateRandomDieceNum();
                });
                print('Right button ====> $rightDiceNumberEnd');
              },
            ),
          ),
        ],
      ),
    );
  }
}
