import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/views/add_note_page.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/note_item.dart';

import 'notes_page.dart';


class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: NotesPage(),
      floatingActionButton:FloatingActionButton(onPressed: () {
        showModalBottomSheet(context: context,
            isScrollControlled: true,
            builder: (context){
          return const AddNotePage();
        });

      },
        backgroundColor: kPrimaryColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(90)
        ),
        child:  Icon(Icons.add,
        color: Colors.black.withOpacity(.7),),),
    );

  }
}

