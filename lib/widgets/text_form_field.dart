import 'package:flutter/material.dart';
class BuildTextFormField extends StatelessWidget {
   const BuildTextFormField({Key? key,required this.text,required this.withIcon,required this.icon,required this.controller}) : super(key: key);
final String text;
final bool withIcon;
final Icon icon;
final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: text,
        hintStyle: const TextStyle(color: Colors.black, fontSize: 18),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide:  const BorderSide(color: Colors.grey, width: 2),
        ),
        prefixIcon: withIcon? icon:null,
        fillColor: Colors.grey[100],
        filled: true,
      ),
    );
  }
}
