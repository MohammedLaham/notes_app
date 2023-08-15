import 'package:hive/hive.dart';
/*
خطوات التعامل مع hive
1- انشاء@HiveType(typeId: 0) والتاكد من ان الرقم فريد
2- انشاء @HiveField(0) لكل اشي بدي اخزنه
3- عمل part 'note_model.g.dart';
4- الذهاب الى تيرمينال وكتابة السطر هذا flutter packages pub run build_runner build في الاسفل لانشاء ملف adapter type يلزم في التيرمينال هذا السطر
 */

part 'note_model.g.dart';
@HiveType(typeId: 0)
class NoteModel extends HiveObject{
  @HiveField(0)
   String title;
  @HiveField(1)
   String subTitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
   int color;

  NoteModel(
      {required this.title,
      required this.subTitle,
      required this.date,
      required this.color});
}
