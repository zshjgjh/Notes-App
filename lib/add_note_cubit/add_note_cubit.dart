import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/add_note_cubit/add_note_state.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/model/note_model.dart';

class AddNoteCubit extends Cubit<AddNoteState>{
  AddNoteCubit():super(AddNoteInitialState());
   Color color= const Color(0xffFFAFCC);
  addNot(NoteModel note) async {
    emit(AddNoteLoadedState());
    try {
      var notesBox=Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(note);

      note.color=color.value;
      emit(AddNoteSuccessState());

    } catch (e) {
      emit(AddNoteFailureState(errorMessage: e.toString()));
    }
  }

}