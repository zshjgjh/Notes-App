import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/model/note_model.dart';
import 'package:notes_app/read_notes_cubit/read_notes_cubit.dart';
import 'package:notes_app/read_notes_cubit/read_notes_state.dart';

import '../widgets/custom_app_bar.dart';
import '../widgets/note_item.dart';

class NotesPage extends StatefulWidget {
   NotesPage({
    super.key,
  });
  @override
  State<NotesPage> createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReadNotesCubit, ReadNotesState>(
      builder: (context, state) {
        List<NoteModel> notesList=BlocProvider.of<ReadNotesCubit>(context).notesList??[];


        return Column(
          children: [
            const CustomAppBar(title: 'Notes', icon: Icon(Icons.search),),
            Expanded(
              child: ListView.builder(
                itemCount: notesList.length,
                itemBuilder: (context, index) {
                  return NoteItem(note: notesList[index],);
                },
              ),
            ),
          ],
        );
      },
    );
  }
}