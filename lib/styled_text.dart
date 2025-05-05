import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  StyledText({super.key, required this.text});

  String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 20,
        fontFamily: 'Poppins',
        fontStyle: FontStyle.italic,
        color: Colors.white,
      ),
    );
  }
}
