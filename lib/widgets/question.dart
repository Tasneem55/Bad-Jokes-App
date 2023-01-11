import 'package:flutter/material.dart';
class Question extends StatelessWidget {
  const Question({Key? key, required this.question}) : super(key: key);


  final String question;
  @override
  Widget build(BuildContext context) {
      return Container(
        margin: const EdgeInsets.all(25),
        child: Text(
          question,
          style: const TextStyle(
              fontSize: 27.5, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      );
  }
}
