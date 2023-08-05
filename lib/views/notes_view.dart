import 'package:flutter/material.dart';
import 'package:note_app/views/add_note_modelsheet.dart';
import 'package:note_app/views/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(context: context, builder:(context){
            return const  AddNoteBottomSheet();
          });
        },
        child: const Icon(
          Icons.add,
        ),
      ),

    );
  }
}
