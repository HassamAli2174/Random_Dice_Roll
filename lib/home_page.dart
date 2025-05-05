import 'package:dice_app/app_bar.dart';
import 'package:dice_app/styled_text.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, required this.color});

  final List<Color> color;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var currentNumber = 1;

  void rollDice() {
    setState(() {
      currentNumber = Random().nextInt(6) + 1;
    });
    print('Image Changed too... $currentNumber');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SleekAppBar(),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: widget.color,
            begin: Alignment.topCenter,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/dice-$currentNumber.png',
                fit: BoxFit.contain,
                width: 200,
              ),
              TextButton(
                onPressed: rollDice,
                style: TextButton.styleFrom(),
                child: StyledText(text: 'Click it'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
