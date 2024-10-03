import 'package:flutter/material.dart';
import 'package:yes_no/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier
{
    List<Message> message = 
    [
      Message(text: 'Hola, Como andas', fromWho: FromWho.hers),
      Message(text: 'Hola, Has hecho las tareas', fromWho: FromWho.me)
    ];

    Future<void> sendMessage( String text) async
    {
      
    }
}