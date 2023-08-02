import 'package:flutter/cupertino.dart';
import 'package:note_app/views/custom_appbar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(padding: EdgeInsets.symmetric(horizontal: 24),child:  Column(children:  [
      SizedBox(height: 50,),
      CustomAppBar()
    ],) ,)
  ;
  }
}
