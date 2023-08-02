import 'package:flutter/material.dart';
import 'package:note_app/views/custom_icon_search.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(children: [
      Text('Notes',style: TextStyle(fontSize: 28,color: Colors.white,inherit: false)),
      Spacer(),
      CustomIconSearch(),
    ],);
  }
}
