import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/cubits/notes_cubit/notes_state.dart';
import 'package:note_app/models/note_model.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() :super(InitialNotes());
  List<NoteModel>? list;

  fetchAllNotes()  {
    var notesBox = Hive.box<NoteModel>(kNotesBox);
    list = notesBox.values.toList();
    emit(SuccessNotes());
  }
}
//   fetchAllNotes()async{
//     try{
//       var notesBox=Hive.box<NoteModel>(kNotesBox);
//       List<NoteModel> list=notesBox.values.toList();
//       emit(SuccessNotes(list));
//     }catch(e){
//       emit(FauilerNotes(e.toString()));
//     }
// }
