import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/views/edit_note_page.dart';

import '../model/note_model.dart';
import '../read_notes_cubit/read_notes_cubit.dart';
import 'package:intl/intl.dart';

class NoteItem extends StatelessWidget {
   NoteItem({super.key, required this.note});
  final NoteModel note;


  @override
  Widget build(BuildContext context) {
    DateTime currentDate=DateTime.now();
    var formatedDate=DateFormat('hh:mm dd-mm-yyyy').format(currentDate);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 2),
      child: GestureDetector(
        onTap: (){
          Navigator.of(context).pushNamed(EditNotePage.id,arguments: note);
        },
        child: Container(
          decoration: BoxDecoration(
            color:Color(note.color),
                borderRadius: BorderRadius.circular(8)
          ),
          child:Padding(
            padding: const EdgeInsets.only(left: 12.0,bottom: 16,top: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                  title:  Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: Text(note.title,
                      style:const TextStyle(
                        fontSize: 26,
                        color: Colors.black
                      ) ,),
                  ),
                  trailing: IconButton(onPressed:(){
                    note.delete();
                    BlocProvider.of<ReadNotesCubit>(context).fetchNotes();
                  }, icon: const Icon(Icons.delete),
                  color: Colors.black,),
                  subtitle:  Text(note.subTitle,
                      style:TextStyle(
                          fontSize: 16,
                          color: Colors.black.withOpacity(0.7)
                      )),
        
                ),Padding(
                  padding: const EdgeInsets.only(right:  24.0,top: 24,bottom: 10),
                  child: Text(formatedDate, style:const TextStyle(
                      fontSize: 12,
                      color: Colors.black
                  )),
                )
              ],
            ),
          )
        ),
      ),
    );
  }
}