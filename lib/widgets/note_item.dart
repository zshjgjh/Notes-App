import 'package:flutter/material.dart';


class NoteItem extends StatelessWidget {
  NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 15),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.lightBlue,
          borderRadius: BorderRadius.circular(8)
        ),
        child: Column(
          children: [
            Text('Flutter Tips',style: TextStyle(
              fontSize: 24,
            ),),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(onPressed:(){}, icon: Icon(Icons.delete),
                color: Colors.black,),
              ],
            ),
            Text('Build yor career with tharwannnnnn;;;;;;;;mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn',
              overflow: TextOverflow.ellipsis,
              maxLines: 4,
              style: TextStyle(
              fontSize: 18,
              color: Colors.grey
            ),),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('${DateTime.now()}',style: TextStyle(
                  fontSize: 14,
                ),),
              ],
            ),



          ],
        ),
      ),
    );
  }
}