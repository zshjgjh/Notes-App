import 'package:hive/hive.dart';
part 'note_model.g.dart';

@HiveType(typeId: 0)

class NoteModel extends HiveObject {

  @HiveField(0)
   String title;
  @HiveField(1)
   String subTitle;
  @HiveField(2)
  final String createdAt;
  @HiveField(3)
   int color;

  NoteModel({required this.color,
    required this.title,
    required this.subTitle,
    required this.createdAt});

}
//flutter packages pub run build_runner build ... add build runner in terminal