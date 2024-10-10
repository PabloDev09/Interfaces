import 'package:flutter/material.dart';
import 'package:yes_no/domain/entities/message.dart';

class HerMessageBubble extends StatelessWidget
{
  final Message message;
  const HerMessageBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 50, 47, 56),
            borderRadius: BorderRadius.circular(15)
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(message.text, style: const TextStyle(color: Colors.white),),
          ),
        ),
        const SizedBox(height: 5),
        _ImageBubble(imageUrl: message.imageUrl,),
      ],
      );
  }
}

class _ImageBubble extends StatelessWidget{
    final String? imageUrl;

    const _ImageBubble({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network(imageUrl!,
          fit: BoxFit.fill,
          loadingBuilder: (context, child, loadingProgress) {
            if(loadingProgress == null) return child;
            return Container(
              padding: const EdgeInsets.all(50),
              color: const Color.fromARGB(255, 185, 185, 185),
              child: const CircularProgressIndicator()
            );
          },
        )

        );
  }
}