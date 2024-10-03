import 'package:flutter/material.dart';

class MyMessageBubble extends StatelessWidget
{
  const MyMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 161, 124, 230),
            borderRadius: BorderRadius.circular(15)
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Laboris duis dolore', style: TextStyle(color: Colors.white),),
          ),
        )
      ],
      );
  }
}

