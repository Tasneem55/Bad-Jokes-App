import 'package:bad_jokes_app/widgets/answer.dart';
import 'package:bad_jokes_app/widgets/buttons.dart';
import 'package:bad_jokes_app/widgets/question.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _jokes = [
    {
      'question': 'What does a baby computer call its father?',
      'answer': 'Data'
    },
    {'question': 'What is a pencil with two erasers?', 'answer': 'Pointless'},
    {
      'question': 'Why is the calender always scared?',
      'answer': 'Because it\'s days are numbers'
    },
    {'question': 'What do you call a fish with no eye?', 'answer': 'Fsh'},
  ];
  var _jokeIndex = 0;

  _changeJokeIndex(String direction) {
    if (direction == 'next') {
      if(_jokeIndex!=_jokes.length-1){
        setState(() {
          _jokeIndex++;
        });
      }else {
        setState(() {
          _jokeIndex=0;
        });
      }

    } else if (direction == 'prev') {
      if(_jokeIndex!=0){
        setState(() {
          _jokeIndex--;
        });
      } else{
        setState(() {
          _jokeIndex= _jokes.length-1;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Question(question: _jokes[_jokeIndex]['question']as String),
            Answer(answer: _jokes[_jokeIndex]['answer']as String),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 120),
              child: Buttons(changeJokeIndex: _changeJokeIndex,),
            ),
          ],
        ),
      ),
    );
  }
}
