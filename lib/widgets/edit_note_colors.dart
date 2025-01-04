
import 'package:flutter/cupertino.dart';
import 'package:notes_app/model/note_model.dart';
import '../constant.dart';
import 'color_item.dart';





class EditNoteColors extends StatefulWidget {

  EditNoteColors({super.key, required this.note});
   final NoteModel note;

  @override
  State<EditNoteColors> createState() => _EditNoteColorsState();
}

class _EditNoteColorsState extends State<EditNoteColors> {
   bool isActive=false;

   late int currentIndex;
   @override
  void initState() {
    currentIndex=kColors.indexOf(Color(widget.note.color));
    super.initState();
  }


  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      reverse: true,
        scrollDirection: Axis.horizontal,
        itemCount: kColors.length,
        itemBuilder: (context, index) {
          return  Padding(
            padding: const EdgeInsets.all(2.0),
            child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                 widget.note.color=kColors[index].value;

                  setState(() {

                  });
                },

                child: ColorItem(color: kColors[index], isActive: currentIndex==index?true:false,)
          )
    );
        });
  }
}


