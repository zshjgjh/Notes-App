import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/add_note_cubit/add_note_state.dart';
import 'package:notes_app/constant.dart';

class CustomAddButton extends StatelessWidget {
  const CustomAddButton({
    super.key, this.onTap,
  });
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
          height: 45,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: kPrimaryColor
          ),
          child:  BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
          return Center(
              child:state is AddNoteLoadedState?const CircularProgressIndicator(): Text('add',
            style:TextStyle(
              fontSize: 24,
              color: Colors.black.withOpacity(.7)
            ) ,));
  },
)),
    );
  }
}