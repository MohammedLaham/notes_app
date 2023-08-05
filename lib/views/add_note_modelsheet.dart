import 'package:flutter/material.dart';
import 'package:note_app/views/custom_button.dart';
import 'package:note_app/views/custom_textfield.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child:
      SingleChildScrollView(
        child:    Column(
          children: [
            SizedBox(height: 32,),
            CustomTextField(
              hint: 'Title',
            ),SizedBox(height: 16,),
            CustomTextField(
              maxLines: 5,
              hint: 'Content',
            ),SizedBox(height: 60,),
            CustomButton(),SizedBox(height: 16,),
          ],
        ),
      ),

    );
  }
}
