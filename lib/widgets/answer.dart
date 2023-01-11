import 'package:flutter/material.dart';
class Answer extends StatelessWidget {
  const Answer({Key? key,required this.answer}) : super(key: key);
final String answer;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(15, 5, 15, 45),
      child: Text(
        answer,
        style: const TextStyle(
            fontSize: 22.5, fontWeight: FontWeight.normal),
        textAlign: TextAlign.center,
      ),
    );
  }
}
