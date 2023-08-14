import 'package:note_app/models/note_model.dart';

abstract class NotesState{}
class InitialNotes extends NotesState{}
// class LoadingNotes extends NotesState{}
// class SuccessNotes extends NotesState{
//   final List<NoteModel> list;
//
//   SuccessNotes(this.list);
// }
// class FauilerNotes extends NotesState{
//   final String errMessage;
//
//   FauilerNotes(this.errMessage);
// }