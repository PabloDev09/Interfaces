import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no/domain/entities/message.dart';
import 'package:yes_no/presentation/providers/chat_provider.dart';
import 'package:yes_no/presentation/widgets/chat/hermessage_bubble.dart';
import 'package:yes_no/presentation/widgets/chat/mymessage_bubble.dart';
import 'package:yes_no/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perri', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(234, 8, 6, 6),
        centerTitle: false,
        leading: const Padding(
          padding: EdgeInsets.all(3.9),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://images.unsplash.com/photo-1518815068914-038920b6f0c6?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8fA%3D%3D',
            ),
          ),
        ),
        actions:
        const [
         Padding(
           padding: EdgeInsets.all(3.9),
           child: Icon(Icons.call, color: Colors.white)
         ),
         
        ],
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              // El ListView.builder tiene que estar wrappeado con un Container o Expanded
              child: ListView.builder(
                controller: chatProvider.scrollController,
                itemCount: chatProvider.messageList.length,
                itemBuilder: (context, index) {
                  final message = chatProvider.messageList[index];
                  return (message.fromWho == FromWho.hers)
                      ?  HerMessageBubble(message: message)
                      :  MyMessageBubble(message: message);
                },
              ),
            ),
          ),
          MessageFieldBox(
            onValue: (value) {
              chatProvider.sendMessage(value);
            },
          ),
        ],
      ),
    );
  }
}