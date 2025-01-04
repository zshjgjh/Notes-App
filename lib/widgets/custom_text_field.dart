import 'package:flutter/material.dart';

import '../constant.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({super.key,
     required this.hintText,
     this.maxLines=1,
     this.onSaved,this.controller,
     this.onChanged
  });
  final String hintText;
  final int maxLines;
  final void Function(String?)? onSaved;
  TextEditingController? controller;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value){
        if(value?.isEmpty??true){
          return 'Field is required';
        }
      },
      onChanged:onChanged ,
      controller: controller,
      onSaved: onSaved,
      cursorColor: kPrimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
              color: kPrimaryColor
          ),
          border:buildOutlineInputBorder(kPrimaryColor) ,
          enabledBorder: buildOutlineInputBorder(kPrimaryColor),
          focusedBorder: buildOutlineInputBorder(kPrimaryColor)
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder(color) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
            color: color
        )
    );
  }
}