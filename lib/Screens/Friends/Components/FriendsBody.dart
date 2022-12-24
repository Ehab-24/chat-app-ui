import 'package:chat_app_ui/Screens/Home/HomeScreenComponents/CategoryList.dart';
import 'package:flutter/material.dart';

class FriendsBody extends StatelessWidget {
  const FriendsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CategoryList(),
      ],
    );
  }
}
