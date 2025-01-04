import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/add_note_cubit/add_note_state.dart';
import '../read_notes_cubit/read_notes_cubit.dart';
import '../widgets/add_note_form.dart';


class AddNotePage extends StatelessWidget {
  const AddNotePage({super.key,});


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailureState) {
            print('fail ${state.errorMessage}');
          }
          if (state is AddNoteSuccessState) {
            BlocProvider.of<ReadNotesCubit>(context).fetchNotes();
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoadedState ? true : false,
            child: Padding(
              padding: EdgeInsets.only(top: 32.0,
                  left: 16,
                  right: 16,
                  bottom: MediaQuery
                      .of(context)
                      .viewInsets
                      .bottom),
              child: const SingleChildScrollView(
                  child: addNoteForm()),
            ),
          );
        },
      ),
    );
  }
}

