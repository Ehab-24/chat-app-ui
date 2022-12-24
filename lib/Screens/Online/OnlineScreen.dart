import 'package:chat_app_ui/Screens/Online/OnlineScreenComponents/OnlineBody.dart';
import 'package:flutter/material.dart';
import 'package:chat_app_ui/Globals.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Home/HomeScreenComponents/CategoryList.dart';
import '../Home/HomeScreenComponents/MyAppBar.dart';


class OnlineScreen extends StatefulWidget {
  const OnlineScreen({Key? key}) : super(key: key);

  @override
  State<OnlineScreen> createState() => _OnlineScreenState();
}

class _OnlineScreenState extends State<OnlineScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: primaryDark,

      appBar: const MyAppBar(),

      body: Column(
        children: const [
          
          CategoryList(),

          OnlineBody(),
        ],
      )
    );
  }
}