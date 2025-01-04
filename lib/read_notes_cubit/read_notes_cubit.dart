
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/model/note_model.dart';
import 'package:notes_app/read_notes_cubit/read_notes_state.dart';


class ReadNotesCubit extends Cubit<ReadNotesState>{
  ReadNotesCubit():super(ReadNotesInitialState());
  List<NoteModel>? notesList;
  fetchNotes() {

     notesList=Hive.box<NoteModel>(kNotesBox).values.toList();
     notesList?.sort((a,b)=>b.createdAt.compareTo(a.createdAt));

    emit(ReadNotesSuccessState());


  }

}