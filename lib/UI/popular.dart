import 'package:flutter/material.dart';
class Popular extends StatefulWidget {
  const Popular({Key? key}) : super(key: key);

  @override
  State<Popular> createState() => _PopularState();
}

class _PopularState extends State<Popular> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Popular',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
      ),
    );
  }
}
