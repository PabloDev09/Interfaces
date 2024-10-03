import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget
{
  const HerMessageBubble({super.key});

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
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Por de more', style: TextStyle(color: Colors.white),),
          ),
        ),
        const SizedBox(height: 5),
        const _ImageBubble(),
      ],
      );
  }
}

class _ImageBubble extends StatelessWidget{
    const _ImageBubble({super.key});

  @override
  Widget build(BuildContext context) {

      return ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network('data:image/jpeg;base64,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',
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