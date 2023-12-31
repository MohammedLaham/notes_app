import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_state.dart';
import 'package:note_app/models/note_model.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  Color color= const  Color(0xffEEF4D4);
  addNote(NoteModel noteModel) {
    noteModel.color=color.value;
    emit(AddNoteLoading());
    try {
      //genirc class
      var notebox = Hive.box<NoteModel>(kNotesBox);
       notebox.add(noteModel);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
