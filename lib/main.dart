import 'package:dice_app/dice_app_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DiceApp());
}

class DiceApp extends StatelessWidget {
  const DiceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DiceAppScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
