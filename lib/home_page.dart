import 'package:dice_app/styled_text.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.color});

  final List<Color> color;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: color,
            begin: Alignment.topCenter,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/dice-1.png',
                fit: BoxFit.contain,
                width: 200,
              ),
              TextButton(
                onPressed: () {},
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
