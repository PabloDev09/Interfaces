
import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget
{
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();

    final focusNode = FocusNode();

    final outlineInputBorder = OutlineInputBorder(
          borderSide: const BorderSide(color: Color.fromARGB(0, 5, 139, 248)),
          borderRadius: BorderRadius.circular(40)
          );
        
    final inputDecoration = InputDecoration(
      hintText: 'End your message with a "?"',
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        filled: true,
        fillColor: const Color.fromARGB(255, 191, 191, 191),
        suffixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
             icon: const Icon(Icons.send_outlined),
             onPressed: () {
              final textValue = textController.value.text;
              print('Button: $textValue');
              textController.clear();
             }
          ),
        ),
      ); 
    
    return TextFormField(
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,
      onChanged: (value) {
        print("Changed $value");
      },
      onFieldSubmitted: (newValue) {
        print("Submit: $newValue");
        textController.clear();
        focusNode.requestFocus();
      },
    );
  }
}