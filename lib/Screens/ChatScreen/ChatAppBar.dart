import 'package:chat_app_ui/Globals.dart';
import 'package:flutter/material.dart';


class ChatAppBar extends StatelessWidget implements PreferredSizeWidget {
  
  @override
  Size get preferredSize => const Size.fromHeight(50);

  const ChatAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(

      backgroundColor: primaryDark,
      foregroundColor: primaryLight,
      elevation: 0,
      
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: defPadding),
          child: Icon(Icons.more_horiz),
        )
      ],
    );
  }
}