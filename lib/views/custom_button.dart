import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key,this.onTap}) : super(key: key);
  final void Function() ?onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
      //من خلالها بقدر اصل لاي اشي اله علاقة بسكرين الجهاز
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: kPrimaryColor, borderRadius: BorderRadius.circular(8)),
      height: 50,
      child: const Center(
        child: Text(
          'Add',
          style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold),
        ),
      ),
    ),);
  }
}
