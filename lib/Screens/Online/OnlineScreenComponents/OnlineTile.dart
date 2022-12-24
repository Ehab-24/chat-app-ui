import 'package:flutter/material.dart';
import '../../../Classes/Person.dart';
import '../../../GlobalWidgets/CapitalLetterRichText.dart';
import '../../../Globals.dart';


ListTile OnlineTile(Person user) => 
  ListTile(
    tileColor: primaryMidLight,

    textColor: primaryDark,

    leading: CircleAvatar(
      backgroundImage: AssetImage('Images/${user.imageUrl}'),
      ),
    
    title: CapitalLetterRichText(
      firstletter: user.name[0],
      word: user.name.substring(1,user.name.length),
      size1: 20,
      size2: 16,
      color1: user.isOnline? onprimary: primaryText,
      color2: primaryMidDark,
    ),

    subtitle: Text(
      user.bio,
      overflow: TextOverflow.ellipsis,
    ),

    trailing: Icon(Icons.person, color: user.isOnline? onprimary: primaryText,)
  );