
import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:yes_no/presentation/providers/chat_provider.dart';

class MessageFieldBox extends StatelessWidget
{
  final ValueChanged<String> onValue;
  const MessageFieldBox({required this.onValue, super.key});

  @override
  Widget build(BuildContext context) {

//    final chatProvider = context.watch<ChatProvider>();
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
              final value = textController.text;
              onValue(value);
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
      onFieldSubmitted: (value) {
        onValue(value);
        textController.clear();
        focusNode.requestFocus();
      },
    );
  }
}