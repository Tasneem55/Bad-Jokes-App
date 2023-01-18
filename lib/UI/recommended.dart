import 'package:flutter/material.dart';
class Recommended extends StatefulWidget {
  const Recommended({Key? key}) : super(key: key);

  @override
  State<Recommended> createState() => _RecommendedState();
}

class _RecommendedState extends State<Recommended> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Recommended',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
      ),
    );
  }
}
