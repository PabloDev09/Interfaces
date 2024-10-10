import 'package:countries/config/helpers/get_name_flag_answer.dart';
import 'package:countries/presentations/entities/message.dart'; // Asegúrate de que este modelo esté bien definido
import 'package:flutter/material.dart';

class ChatProvider extends ChangeNotifier {
  final scrollController = ScrollController();

  final List<Message> messages = [];

Future<void> sendMessage(Message message) async {
  messages.clear();

  if (message.text.isEmpty) return ;

  messages.add(message);
  
  countryAnswer(message.text);
  
  notifyListeners(); 
  moveToBottom();
  
}

Future<void> countryAnswer(String name) async 
  {
    final Message answer = await CountryAnswer().getAnswer(name);
    messages.add(answer);
    notifyListeners(); 
  }

Future<void> moveToBottom()
    async {
      await Future.delayed(const Duration(milliseconds: 200));
      scrollController.animateTo(
      scrollController.position.maxScrollExtent
      , 
      duration: const Duration( milliseconds: 500), 
      curve: Curves.easeInOut,
      );
    }
}

