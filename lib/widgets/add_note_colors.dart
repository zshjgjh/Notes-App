import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/constant.dart';



class ColorItem extends StatelessWidget {
  const ColorItem({
    super.key, required this.color, required this.isActive,
  });

  final Color color;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor:isActive?Colors.white:color,
      radius: 33,
      child: CircleAvatar(
        backgroundColor:color,
        radius: 30,


      ),
    );
  }
}

class AddNoteColors extends StatefulWidget {
    const AddNoteColors({
   super.key,
   });

  @override
  State<AddNoteColors> createState() => _AddNoteColorsState();
}

class _AddNoteColorsState extends State<AddNoteColors> {
     bool isActive=false;

     int currentIndex=0;


   @override
   Widget build(BuildContext context) {
     return ListView.builder(
       scrollDirection: Axis.horizontal,
       itemCount: kColors.length,
         itemBuilder: (context, index) {
       return  Padding(
         padding: const EdgeInsets.all(2.0),
         child: GestureDetector(
           onTap: (){
             currentIndex=index;
             BlocProvider.of<AddNoteCubit>(context).color=kColors[index];
             setState(() {

             });
           },
             child: ColorItem(color: kColors[index], isActive: currentIndex==index?true:false,)),
       );
     });
   }
}


