import 'package:countries/presentations/screens/chats/chat_screen.dart';
import 'package:countries/providers/chat_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ChatProvider()), // Proveedor para ChatProvider
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Countries App',
        home: ChatScreen(),
      ),
    );
  }
}
