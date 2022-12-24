import 'package:flutter/material.dart';
import 'ListView_Favourites.dart';
import 'HeaderWithIcon_Favourites.dart';
import 'package:chat_app_ui/Globals.dart';

import 'RecentChats.dart';

class FavouriteContactsContainer extends StatelessWidget {
  const FavouriteContactsContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Expanded(
      child: Container(
    
        decoration: const BoxDecoration(
    
          color: primaryMidLight,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(radius), topRight: Radius.circular(radius))
        ),

        child: Column(
          children: const [
            
            HeaderWithIcon_Favourites(),

            ListView_Favourites(),

            SizedBox(height: defPadding),

            RecentChats()
          ]
        ),
      ),
    );
  }
}
