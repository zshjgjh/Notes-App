import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_app_bar.dart';
import '../widgets/custom_text_field.dart';


class EditNote extends StatelessWidget {
  const EditNote({super.key});
  static String id='edit note';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(title: 'Edit Note', icon: const Icon(Icons.check),),
             const Padding(
               padding: EdgeInsets.symmetric(horizontal: 16.0,vertical: 10),
               child: CustomTextField(hintText: 'Title',),
             ),
            const SizedBox(height: 10,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0,),
              child: CustomTextField(hintText: 'Content',maxLines: 5,),
            )

          ],

        ),
      ),
    );
  }
}

