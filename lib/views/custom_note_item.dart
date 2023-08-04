import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 16,top: 16,left: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Color(0xffFFCC80)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
              title: const Text(
                'Flutter Tips',
                style: TextStyle(color: Colors.black,fontSize: 26),
              ),
              subtitle:const Padding(
                padding: EdgeInsets.only(top: 16),
                child:    Text(
                  'Build your career with Mohammed laham',
                  style: TextStyle(color: Colors.black45,
                      fontSize: 18),
                ),),

              trailing: IconButton(
                onPressed: () {},
                icon:const Icon(FontAwesomeIcons.trash,
                  color: Colors.black,size: 24,
                ),
              )),
          const Padding(
            padding: EdgeInsets.only(right: 30,top: 16),
            child: Text(
              'May21, 2023',
              style: TextStyle(color: Colors.black45,fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
