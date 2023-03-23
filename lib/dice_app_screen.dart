import 'dart:math';

import 'package:flutter/material.dart';

class DiceAppScreen extends StatefulWidget {
  const DiceAppScreen({Key? key}) : super(key: key);

  @override
  State<DiceAppScreen> createState() => _DiceAppScreenState();
}

class _DiceAppScreenState extends State<DiceAppScreen> {
  int firstDiceImg = 1;
  int SecondDiceImg = 1;

  void ChangeDiceNumber() {
    setState(() {
      firstDiceImg = Random().nextInt(6) + 1;
    });
  }

  void ChangeDiceNumber1() {
    setState(() {
      SecondDiceImg = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        title: Text(
          'Dice App',
        ),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Row(children: [
          Expanded(
              child: GestureDetector(
                  onTap: () {
                    ChangeDiceNumber();
                    //print('asdsadasdsa');
                  },
                  child: Image.asset('images/dice$firstDiceImg.png'))),
          SizedBox(
            width: 10,
          ),
          Expanded(
              child: InkWell(
                  onTap: () {
                    //print('sbjwkj');
                    ChangeDiceNumber1();
                  },
                  child: Image.asset('images/dice$SecondDiceImg.png'))),
        ]),
      ),
    );
  }
}
