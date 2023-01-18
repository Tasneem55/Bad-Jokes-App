import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class FGAWidget extends StatelessWidget {
  const FGAWidget({Key? key,required this.text,required this.img}) : super(key: key);
final String text;
final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.grey,width: 1)

      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 30,
              height: 30,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blueGrey,
              ),
              child: Center(child: SvgPicture.asset(
                img,
                color: Colors.white,
                height: 20,
              ),),
            ),
            const SizedBox(width: 10,),
             Text(text,style: const TextStyle(fontSize: 18,color: Colors.black),)
          ],
        ),
      ),
    );
  }
}
