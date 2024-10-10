// ChatScreen.dart
import 'package:countries/presentations/entities/message.dart';
import 'package:countries/presentations/widgets/chats/country_message.dart';
import 'package:countries/presentations/widgets/chats/my_message.dart';
import 'package:countries/providers/chat_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.chat_outlined, color: Colors.white),
        backgroundColor: const Color(0xFF1C1C1E),
        title: const Text('Chat', style: TextStyle(color: Colors.white)),
        centerTitle: false,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text('Inicio', style: TextStyle(color: Colors.white)),
                SizedBox(width: 10),
                Text('Api', style: TextStyle(color: Colors.white)),
                SizedBox(width: 10),
                Text('Banderas', style: TextStyle(color: Colors.white)),
                SizedBox(width: 10),
                Text('Soporte', style: TextStyle(color: Colors.white)),
              ],
            ),
          )
        ],
      ),
      body: const _ChatBody(),
    );
  }
}

class _ChatBody extends StatefulWidget {
  const _ChatBody();

  @override
  State<_ChatBody> createState() => _ChatBodyState();
}

class _ChatBodyState extends State<_ChatBody> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();

    return Container(
      color: const Color(0xFFEDEDED),
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.25,
            child: Image.network(
              'https://i1.wp.com/ticsyformacion.com/wp-content/uploads/2011/05/banderas-mundo.jpg',
              repeat: ImageRepeat.noRepeat,
              fit: BoxFit.cover,
              scale: 1,
            ),
          ),
          AppBar(
            title: const Text('Country Api Chat', style: TextStyle(color: Colors.white)),
            centerTitle: true,
            backgroundColor: const Color(0xFFFE6B8A),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              controller: chatProvider.scrollController,
              itemCount: chatProvider.messages.length,
              itemBuilder: (context, index) 
              {
                if (chatProvider.messages[index].fromWho == FromWho.country) 
                {
                  return CountryMessage(message: chatProvider.messages[index]);
                  
                } else 
                {
                  return MyMessage(message: chatProvider.messages[index]);
                } 
              },
            ),
          ),
          TextFormField(
            controller: _controller,
            focusNode: _focusNode,
            style: const TextStyle(color: Colors.black),
            cursorColor: const Color(0xFFFE6B8A),
            decoration: InputDecoration(
              hintFadeDuration: const Duration(milliseconds: 100),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFFE6B8A)),
              ),
              filled: true,
              fillColor: const Color(0xFFFFFFFF),
              hintText: 'Escribe un mensaje...',
              hintStyle: const TextStyle(color: Colors.black54),
              suffixIcon: IconButton(
                icon: const Icon(Icons.send, color: Color(0xFFFE6B8A)),
                onPressed: () {
                  final value = _controller.text;
                  chatProvider.sendMessage(Message(text: value, fromWho: FromWho.me));
                  _controller.clear();
                  _focusNode.requestFocus();
                },
              ),
            ),
            onChanged: (value) {
            },
            onFieldSubmitted: (value) {
              chatProvider.sendMessage(Message(text: value, fromWho: FromWho.me));
              _controller.clear();
              _focusNode.requestFocus();
            },
          ),
        ],
      ),
    );
  }
}
