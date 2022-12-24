import 'package:chat_app_ui/Classes/Message.dart';
import 'package:flutter/material.dart';
import 'package:chat_app_ui/Globals.dart';

import 'ChatAppBar.dart';
import 'ChatBody.dart';


class ChatScreen extends StatelessWidget {

  final int index;

  const ChatScreen({
    Key? key,
    required this.index
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final Message msg = messages[index];

    return Scaffold(

      backgroundColor: primaryDark,

      appBar: const ChatAppBar(),

      body: ChatBody(title: msg.sender.name),
    );
  }
}