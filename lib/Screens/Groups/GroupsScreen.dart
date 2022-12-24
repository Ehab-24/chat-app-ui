import 'package:chat_app_ui/Screens/Home/HomeScreenComponents/MyAppBar.dart';
import 'package:flutter/material.dart';
import 'Components/GroupsBody.dart';

class GroupsScreen extends StatelessWidget {
  const GroupsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.grey.shade400,

      appBar: const MyAppBar(),

      body: const GroupsBody()
    );
  }
}