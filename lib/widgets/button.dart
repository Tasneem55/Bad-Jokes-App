import 'package:flutter/material.dart';

import '../UI/bottom_navigation_bar.dart';
class Button extends StatelessWidget {
   Button({Key? key,required this.text,required this.pageName}) : super(key: key);
final String text;
 final String pageName;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 55,
        decoration: BoxDecoration(color: Colors.green,borderRadius: BorderRadius.circular(25)),
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, pageName);

          },
          child:  Text(text,style: const TextStyle(color: Colors.white,fontSize: 18),),
        ));
  }
}
