

import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier{
  List <Message> messageList=[
     Message(text: 'hola mundo', fromWho: FromWho.mine),
     Message(text: 'Ya regresaste ?', fromWho: FromWho.mine),
  ];

  Future<void>sendMessage(String text)async{
    // implementarl metodo
  }
}