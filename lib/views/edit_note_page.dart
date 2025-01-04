
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/model/note_model.dart';
import 'package:notes_app/widgets/edit_note_colors.dart';

import '../read_notes_cubit/read_notes_cubit.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_text_field.dart';


class EditNotePage extends StatelessWidget {
    EditNotePage({super.key});
  static String id='edit note';
  String? title,subTitle;


  @override
  Widget build(BuildContext context) {
     NoteModel note=ModalRoute.of(context)!.settings.arguments as NoteModel;
    TextEditingController controller=TextEditingController(text:note.title );
    TextEditingController controller2=TextEditingController(text:note.subTitle );

    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(title: 'Edit Note', icon: const Icon(Icons.check), onPressed: () {
              note.title=title??note.title;
              note.subTitle=subTitle??note.subTitle;
              note.save();
              BlocProvider.of<ReadNotesCubit>(context).fetchNotes();
              Navigator.pop(context);

            },),
              Padding(
               padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 10),
               child: CustomTextField(hintText: 'Title',
                 controller: controller,
               onChanged: (value){
                 title=value;
               },),
             ),
            const SizedBox(height: 10,),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0,),
              child: CustomTextField(hintText: 'Content',
                maxLines: 5,
                controller: controller2,
              onChanged: (value){
                subTitle=value;
              },),
            ),
            const SizedBox(height: 20,),
             SizedBox(
              height: 80,
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: EditNoteColors(note: note,),
                ))

          ],

        ),
      ),
    );
  }
}

