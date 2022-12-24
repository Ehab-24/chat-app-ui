import 'package:chat_app_ui/Screens/Home/HomeScreenComponents/MessageTile.dart';
import 'package:flutter/material.dart';
import 'package:chat_app_ui/Globals.dart';
import 'package:google_fonts/google_fonts.dart';
import 'HomeScreenComponents/CategoryList.dart';
import 'HomeScreenComponents/MyAppBar.dart';
import 'HomeScreenComponents/FavouriteContactsContainer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override

  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: primaryDark,

      appBar: const MyAppBar(),

      body: Column(
        children: const [
          
          CategoryList(),

          FavouriteContactsContainer(),
        ],
      )
    );
  }
}


// Expanded(
//             child: Container(
            
//               decoration: const BoxDecoration(

//                 color: Colors.white,
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(radius), topRight: Radius.circular(radius)),
//               ),

//               //child: const MessageTile(newFlag: true),
//             ),
//           )