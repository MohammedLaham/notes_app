import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomIconSearch extends StatelessWidget {
  const CustomIconSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color: Colors.white.withOpacity(.1)),
      child:const  Icon(Icons.search),
    );
  }
}
