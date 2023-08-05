import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({Key? key,required this.iconData}) : super(key: key);
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color: Colors.white.withOpacity(.1)),
      child:  Icon(iconData),
    );
  }
}
