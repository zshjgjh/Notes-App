import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




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