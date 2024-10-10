import 'package:flutter/material.dart';
import 'package:yes_no/domain/entities/message.dart';

class MyMessageBubble extends StatelessWidget
{
  final Message message;
  const MyMessageBubble({super.key, required this.message});

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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(message.text, style: const TextStyle(color: Colors.white),),
          ),
        ),
        const SizedBox(height: 5,),
      ],
      );
  }
}

