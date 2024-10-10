import 'package:flutter/material.dart';
import 'package:yes_no/config/helpers/get_yes_no_answer.dart';
import 'package:yes_no/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier
{
    final scrollController = ScrollController();
    final getYesNoAnswer = GetYesNoAnswer();

    List<Message> messageList = 
    [
      Message(text: 'Hola, Como andas', fromWho: FromWho.me),
      Message(text: 'Hola, Has hecho las tareas', fromWho: FromWho.me)
    ];

    Future<void> sendMessage( String text) async
    {
      if(text.isEmpty) return ;
      messageList.add(Message(text: text, fromWho: FromWho.me));

      if(text.endsWith('?'))
      {
        herReply();
      }

      notifyListeners();
      moveToBottomScrollController();
      
    }

    Future<void> herReply() async
    {
      final hermessage = await getYesNoAnswer.getAnswer();
      if(hermessage.text.isEmpty) return ;
      messageList.add(hermessage);

      notifyListeners();
      moveToBottomScrollController();
    }

    Future<void> moveToBottomScrollController()
    async {
      await Future.delayed(Duration(milliseconds: 200));
      scrollController.animateTo(
      scrollController.position.maxScrollExtent
      , 
      duration: const Duration( milliseconds: 500), 
      curve: Curves.easeInCubic,
      );
    }
}