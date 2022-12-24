import 'package:flutter/material.dart';
import 'package:chat_app_ui/Globals.dart';


class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(50);

  const MyAppBar({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return AppBar(

      backgroundColor: Colors.grey.shade400,

      centerTitle: true,

      elevation: 0,

      leading: const Icon(Icons.access_time_filled, color: primaryLight),

      actions: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: defPadding),
          child: Icon(Icons.search, color: primaryLight),
        )
      ],
    );
  }
}