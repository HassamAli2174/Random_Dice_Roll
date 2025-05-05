import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  StyledText({super.key, required this.text});

  String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,);
  }
}
