import 'package:flutter/cupertino.dart';
import 'package:note_app/views/custom_button.dart';
import 'package:note_app/views/custom_textfield.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({Key? key}) : super(key: key);

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title,subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        autovalidateMode: autovalidateMode,
        child:  Column(children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextField(
            onSaved: (value){
              title=value;
            },
            hint: 'Title',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onSaved: (value){
              subTitle=value;
            },
            maxLines: 5,
            hint: 'Content',
          ),
          const SizedBox(
            height: 60,
          ),
           CustomButton(
             onTap: (){
               if(formKey.currentState!.validate()){
                 formKey.currentState!.save();
               }else{
                 //يضل يعمل فحص للبيانات اثناء الكتابة
                 autovalidateMode=AutovalidateMode.always;
                 setState(() {

                 });
               }
             },
           ),
          const SizedBox(
            height: 16,
          ),
        ]));
  }
}
