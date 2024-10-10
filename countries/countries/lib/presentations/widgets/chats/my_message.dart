import 'package:countries/presentations/entities/message.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyMessage extends StatelessWidget {
  final Message message;
  const MyMessage({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          padding: const EdgeInsets.all(10.0),
          margin: const EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Color.fromARGB(211, 0, 0, 0)),
          child: Text(
            message.text,
            style: const TextStyle(color: Color.fromRGBO(255, 254, 254, 1)),
          ),
        ),
      ],
    );
  }
}
