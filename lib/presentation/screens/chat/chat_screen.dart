import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/sent_message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://img.ecartelera.com/noticias/66000/66021-c.jpg'),
          ),
        ),
        title: const Text('Mi amor 💜'),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(child: ListView.builder(itemBuilder: (context, index) {
              return const SentMessageBubble();
            })),
            const Text('Hola mundo')
          ],
        ),
      ),
    );
  }
}
