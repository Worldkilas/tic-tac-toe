import 'package:fiestapp/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hintText, required this.textEditingController});
  final String hintText;
  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(boxShadow: [
        BoxShadow(blurRadius: 5, color: Colors.blue, spreadRadius: 2)
      ]),
      child: TextField(
        controller: textEditingController,
        decoration: InputDecoration(
            fillColor: bgColor, filled: true, hintText: hintText),
      ),
    );
  }
}
