import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_state.dart';
import 'package:note_app/views/add_note_form.dart';

class AddNoteBottomSheet extends StatefulWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  State<AddNoteBottomSheet> createState() => _AddNoteBottomSheetState();
}

class _AddNoteBottomSheetState extends State<AddNoteBottomSheet> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child:
          BlocConsumer<AddNoteCubit, AddNoteState>(
              builder: (context, state) {
        return  AbsorbPointer(
          //عشان تمنعك من عمل اي اشي ع السكرين في حال كان بيحمل
          absorbing: state is AddNoteLoading ? true : false ,
          child: Padding(
              padding: EdgeInsets.only(left: 16,right: 16,
                  //عشان تعمل مسافة من تحت تكون هذه المسافة بحجم الكيبورد
                  bottom: MediaQuery.of(context).viewInsets.bottom),

              child:const SingleChildScrollView(child: AddNoteForm())),
        );
      }, listener: (context, state) {
        if (state is AddNoteFailure) {}
        if (state is AddNoteSuccess) {
          Navigator.pop(context);
        }
      }),
    );
  }
}
