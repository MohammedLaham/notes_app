import 'package:flutter/material.dart';
import 'package:note_app/views/add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child:
      SingleChildScrollView(
        child:   AddNoteForm(),
      ),

    );
  }
}
