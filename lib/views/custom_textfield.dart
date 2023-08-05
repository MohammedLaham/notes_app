import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, required this.hint,  this.maxLines=1}) : super(key: key);
  final String? hint;
  final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        enabledBorder: buildBorder(),
        border: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
        hintStyle: const TextStyle(color: kPrimaryColor),
        hintText: hint,
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide:  BorderSide(color: color ?? Colors.white));
  }
}