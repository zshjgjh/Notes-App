import 'package:flutter/material.dart';

import 'custom_icon_button.dart';


class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon, this.onPressed});
  final String title;
  final Icon icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
          style: const TextStyle(
            fontSize: 28
          ),),
          CustomIconButton(icon: icon, onPressed: onPressed,)
        ],
      ),
    );
  }
}

