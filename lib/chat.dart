import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  final String name;
  const ChatPage({Key? key , required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[900],
        title: Text(name),
      ),
      body: Center(
        child: Text (
          'Hey Welcome to WhatsApp'
        ),
      ),
    );
  }
}
