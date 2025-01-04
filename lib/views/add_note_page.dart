import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_add_button.dart';
import 'custom_text_field.dart';


class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 32.0,horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(hintText: 'Title',),
            SizedBox(height: 10,),
            CustomTextField(hintText: 'Content',maxLines: 5,),
            SizedBox(height: 30,),
            CustomAddButton()

          ],

        ),
      ),
    );
  }
}

