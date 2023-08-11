import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
          child: MultiBlocProvider(
              providers: [
            BlocProvider(create: (context) => AddNoteCubit()),
          ],
              child: BlocConsumer<AddNoteCubit, AddNoteState>(
                  builder: (context, state) {
                    return ModalProgressHUD(
                        inAsyncCall: state is AddNoteLoading ? true : false,
                        child: const AddNoteForm());
                  },
                  listener: (context, state) {
                    if(state is AddNoteFailure){

                    } if(state is AddNoteSuccess){
                      Navigator.pop(context);
                    }
                  }))),
    );
  }
}
