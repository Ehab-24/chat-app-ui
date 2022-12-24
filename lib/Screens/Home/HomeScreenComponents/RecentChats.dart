import 'package:flutter/material.dart';
import 'package:chat_app_ui/Globals.dart';

import 'MessageTile.dart';


class RecentChats extends StatelessWidget {
  const RecentChats({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ClipRRect(

        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(radius),
          topRight: Radius.circular(radius)),

        child: Container(
      
          color: primaryLight,
      
          child: Padding(
            padding: const EdgeInsets.only(right: defPadding),
            child: ListView.builder(
              
              itemCount: messages.length,
              itemBuilder: (context, index) 
              => Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: MessageTile(index: index,),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
