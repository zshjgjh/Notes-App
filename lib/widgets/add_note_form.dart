import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/model/note_model.dart';
import 'package:notes_app/widgets/add_note_colors.dart';

import 'custom_add_button.dart';
import 'custom_text_field.dart';

class addNoteForm extends StatefulWidget {
  const addNoteForm({
    super.key,
  });

  @override
  State<addNoteForm> createState() => _addNoteFormState();
}

class _addNoteFormState extends State<addNoteForm> {
  GlobalKey<FormState> formKey=GlobalKey();
  AutovalidateMode autovalidateMode=AutovalidateMode.disabled;
  String?title,subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode:autovalidateMode ,
      child: Column(
        children: [
          CustomTextField(hintText: 'Title',
            onSaved: (value){
              title=value;
            },),
          const SizedBox(height: 10,),
          CustomTextField(hintText: 'Content',maxLines: 5,
            onSaved: (value){
              subTitle=value;
            },),
          const SizedBox(height: 15,),
           const SizedBox(
            height: 70,
              child: AddNoteColors()),
          const SizedBox(height: 10,),
          CustomAddButton(onTap: (){
            if(formKey.currentState!.validate()){
              formKey.currentState!.save();
              var noteModel=NoteModel(color: Colors.blue.value,
                  title: title!,
                  subTitle: subTitle!,
                  createdAt: DateTime.now().toString());
              BlocProvider.of<AddNoteCubit>(context).addNot(noteModel);
            }else{
              autovalidateMode=AutovalidateMode.always;
              setState(() {

              });
            }
          },)

        ],

      ),
    );
  }
}

