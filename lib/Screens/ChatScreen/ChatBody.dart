import 'package:flutter/material.dart';
import 'package:chat_app_ui/Globals.dart';
import 'package:google_fonts/google_fonts.dart';

import 'ChatMessageCard.dart';

class ChatBody extends StatelessWidget {

  final String title;

  const ChatBody({
    Key? key,
    required this.title
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: title[0],
                style: GoogleFonts.merriweather(
                  color: highlightColor.withOpacity(0.8),
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                ),
              ),
              TextSpan(
                text: title.substring(1, title.length),
                style: const TextStyle(
                  color: primaryLight,
                  fontSize: 32,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 10),
        
        Expanded(
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(radius),
                topRight: Radius.circular(radius)),
            child: Container(
              color: primaryLight,
              child: ListView.builder(
                  itemCount: messages.length,
                  itemBuilder: (context, index) => ChatMessageCard(
                      index: index) //, isMe: messages[index].sender.id == 0)
                  ),
            ),
          ),
        ),
      ],
    );
  }
}
