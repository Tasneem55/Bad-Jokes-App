import 'package:flutter/material.dart';
class Category extends StatefulWidget {
   Category({Key? key,required this.txt,required this.page,required this.isSelected,required this.index}) : super(key: key);
String txt;
String page;
int isSelected;
int index;

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7),
      child: InkWell(
        onTap: (){
         setState(() {
           widget.isSelected= widget.index;


          // Navigator.pushNamed(context, widget.page);
         });
        },
        child: Container(
          //width: 100,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: widget.isSelected==widget.index?const Color(0xFF1AB65C): Colors.white,
          border: Border.all(color: const Color(0xFF1AB65C),width: 2)),
          child:  Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(widget.txt,style:  TextStyle(fontSize: 20,color: widget.isSelected==widget.index? Colors.white:const Color(0xFF1AB65C) ,fontWeight: FontWeight.normal),),
            ),
          ),

        ),
      ),
    );
  }
}
