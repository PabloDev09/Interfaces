import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no/presentation/providers/chat_provider.dart';
import 'package:yes_no/presentation/screens/chat/chat_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ChatProvider(),)
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Yes No App',
        home: ChatScreen()
      ),
    );
  }
}