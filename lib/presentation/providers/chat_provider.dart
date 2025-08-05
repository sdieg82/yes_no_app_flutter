

import 'package:flutter/material.dart';
import 'package:yes_no_app/config/helpers/get_yes_no_answer.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier{

  final ScrollController chatScrollController=ScrollController(); 

  List <Message> messageList=[
     Message(text: 'hola mundo', fromWho: FromWho.mine),
     Message(text: 'Ya regresaste ?', fromWho: FromWho.mine),
  ];

  Future<void>sendMessage(String text)async{
    if(text.isEmpty) return;
    // implementarl metodo
    final newMessage=Message(text: text, fromWho: FromWho.mine);
    messageList.add(newMessage);
    if(text.endsWith('?')){
      await herReply();
    }
    notifyListeners();
    moveScrollToBottom();
  }

  Future<void>herReply() async{
    final herMessage= await GetYesNoAnswer().getAnswer();
    messageList.add(herMessage);
    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> moveScrollToBottom()async {
    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent, 
      duration: const Duration(microseconds: 300), 
      curve: Curves.easeOut,
      );
  }
}