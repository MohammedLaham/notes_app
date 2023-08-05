import 'package:flutter/cupertino.dart';
import 'package:note_app/views/notes_view_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:const EdgeInsets.symmetric(vertical: 16),
        child: ListView.builder(
            padding: EdgeInsets.zero,
            itemBuilder: (contex, index) {
          return const Padding(padding: EdgeInsets.symmetric(vertical: 4),child: NotesViewItem(),);
        }));
  }
}
