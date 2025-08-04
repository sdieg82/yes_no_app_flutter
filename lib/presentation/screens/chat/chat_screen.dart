import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
             'https://thumbs.dreamstime.com/b/lama-alpaca-thumbs-up-winks-emoji-animal-happy-emoji-lama-alpaca-thumbs-up-winks-emoji-animal-happy-emoji-vector-103597040.jpg'
            ),
          ),
        ),
        title:Text('Chat Screen'),
        centerTitle: true,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child:ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                return (index %2==0)
                  ? const HerMessageBubble() 
                  : const MyMessageBubble();
              },) ,
            ),
            Text('Mundo')
          ],
        ),
      ),
    );
  }
}
