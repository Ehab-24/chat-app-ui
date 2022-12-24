import 'package:flutter/material.dart';
import 'package:chat_app_ui/Globals.dart';
import '../../ChatScreen/ChatScreen.dart';
import 'MessageInfoChip.dart';

class MessageTile extends StatelessWidget {
  
  final int index;
  
  const MessageTile({
    Key? key,
    required this.index
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (_) => ChatScreen(index: index)));
      },

      child: Container(
    
        height: 100,
        width: 100,
    
        decoration: BoxDecoration(
    
          color: messages[index].isread? primaryLight.withOpacity(0.7) : primaryLight,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20)), 
            
            boxShadow: [
              BoxShadow(
                color: primaryDark.withOpacity(0.3),
                offset: const Offset(0,5),
                blurRadius: blurRadius,
              ),
            ]
        ),
    
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: defPadding),
          child: MessageInfoChip(index: index),
        ),
      ),
    );
  }
}