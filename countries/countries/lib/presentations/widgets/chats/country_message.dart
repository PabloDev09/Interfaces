import 'package:countries/presentations/entities/message.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CountryMessage extends StatelessWidget 
{
  final Message message;
  const CountryMessage({required this.message, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(10.0),
          margin: const EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Color(0xFFFE6B8A)),
          child: Text(
            message.text,
            style: const TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        ImageBubble(
          imageUrl: message.imageUrl
          )
      ],
    );
  }
}

class ImageBubble extends StatelessWidget
{
  final String imageUrl;
  const ImageBubble({required this.imageUrl, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          margin: const EdgeInsets.only(left: 10.0, right: 10.0),
          decoration: 
          const BoxDecoration
          (
              borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Image.network(imageUrl, fit: BoxFit.cover,)
          );
  }
}
