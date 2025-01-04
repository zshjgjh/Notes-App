import 'package:flutter/material.dart';

import '../widgets/custom_app_bar.dart';
import '../widgets/note_item.dart';

class NotesView extends StatelessWidget {
  NotesView({
    super.key,
  });
  final List<Color> colors=[Colors.amberAccent,
    Colors.lightBlueAccent,
    Colors.purpleAccent,
    Colors.lightGreenAccent];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(title: 'Notes', icon: Icon(Icons.search),),
        Expanded(
          child: ListView.builder(
            itemCount: colors.length,
            itemBuilder: (context,index){
              return  NoteItem(color: colors[index],);
            },
          ),
        ),
      ],
    );

  }
}