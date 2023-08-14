import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/cubits/notes_cubit/notes_state.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/notes_view_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit,NotesState>(builder: (context,state){
      List<NoteModel> notes= BlocProvider.of<NotesCubit>(context).list!;
      return   Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
            itemCount: notes.length,
              padding: EdgeInsets.zero,
              itemBuilder: (contex, index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(vertical: 4),
                  child: NotesViewItem(),
                );
              }));
    })
    ;
  }
}
