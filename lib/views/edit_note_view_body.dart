import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/custom_appbar.dart';
import 'package:note_app/views/custom_textfield.dart';
import 'package:note_app/views/editnote_colors_listview.dart';

//عند انشاء اي متغير يلزمني statefullwedgit
class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({Key? key, required this.noteModel}) : super(key: key);
  final NoteModel noteModel;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomAppBar(
            title: 'Edit Note',
            iconData: Icons.check,
            onPressed: () {
              //يعني لو ما عدل خذ القيمة القديمة
              widget.noteModel.title = title ?? widget.noteModel.title;
              widget.noteModel.subTitle = content ?? widget.noteModel.subTitle;
              widget.noteModel.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
          ),
          const SizedBox(
            height: 50,
          ),
          CustomTextField(
              onChanged: (value) {
                title = value;
              },
              hint: widget.noteModel.title),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
              onChanged: (value) {
                content = value;
              },
              hint: widget.noteModel.subTitle,
              maxLines: 5),
          const SizedBox(
            height: 16,
          ),
          EditNoteColorList(
            noteModel: widget.noteModel,
          )
        ],
      ),
    );
  }
}
