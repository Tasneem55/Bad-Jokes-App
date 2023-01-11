import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({Key? key,required this.changeJokeIndex}) : super(key: key);
  final Function(String) changeJokeIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FloatingActionButton(
          onPressed: () {
            changeJokeIndex('prev');
          },
          backgroundColor: Colors.orange,
          child: const Icon(
            Icons.arrow_left_rounded,
            size: 55,
          ),
        ),
        FloatingActionButton(
          onPressed: () {
            changeJokeIndex('next');
          },
          backgroundColor: Colors.orange,
          child: const Icon(
            Icons.arrow_right_rounded,
            size: 55,
          ),
        ),
      ],
    );
  }
}
