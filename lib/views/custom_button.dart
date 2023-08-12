import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton({Key? key, this.onTap, this.isLoading = false})
      : super(key: key);
  final void Function()? onTap;
  bool isLoading;

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
        child: Center(
          child: isLoading
              ? const SizedBox(
            height: 24,
                  width: 24,
                  child: CircularProgressIndicator(
                    color: Colors.black,
                  ),
                )
              : const Text(
                  'Add',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold),
                ),
        ),
      ),
    );
  }
}
