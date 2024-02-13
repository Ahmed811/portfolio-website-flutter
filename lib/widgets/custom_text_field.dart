import 'package:flutter/material.dart';

import '../constants/colors.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final int maxLine;
  final String? hintText;
  const CustomTextField(
      {super.key, this.controller, this.maxLine = 1, this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: maxLine,
      style: TextStyle(color: ThemeData.dark().TextFieldColor),
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(16),
          filled: true,
          fillColor: ThemeData.dark().BgTextField,
          focusedBorder: getInputBorder,
          enabledBorder: getInputBorder,
          border: getInputBorder,
          hintText: hintText,
          hintStyle: TextStyle(color: ThemeData.dark().TextFieldColor)),
    );
  }

  OutlineInputBorder get getInputBorder {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none);
  }
}
