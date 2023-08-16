import 'package:flutter/cupertino.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/colors_listview.dart';
class EditNoteColorList extends StatefulWidget {
  const EditNoteColorList({Key? key,required this.noteModel}) : super(key: key);
 final NoteModel noteModel;
  @override
  State<EditNoteColorList> createState() => _EditNoteColorListState();
}

class _EditNoteColorListState extends State<EditNoteColorList> {
  late int currentIndex ;
  @override
  void initState() {
currentIndex=kColorList.indexOf(Color(widget.noteModel.color));
super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
          itemCount: kColorList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                   widget.noteModel.color=kColorList[index].value;
                   setState(() {

                   });
                },
                child: ColorItem(
                    isClick: currentIndex == index, color: kColorList[index]),
              ),
            );
          }),
    );
  }
}

