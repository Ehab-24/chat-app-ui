import 'package:flutter/material.dart';
import 'package:chat_app_ui/Globals.dart';

import '../../../GlobalWidgets/CapitalLetterRichText.dart';


class HeaderWithIcon_Favourites extends StatelessWidget {
  const HeaderWithIcon_Favourites({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defPadding),
      child: Row(

        crossAxisAlignment: CrossAxisAlignment.start,

        children: const [

          CapitalLetterRichText(firstletter: 'F', word: 'avourite ',),
          CapitalLetterRichText(firstletter: 'C', word: 'ontacts',),

          Spacer(),

          Icon(Icons.more_horiz)
        ],
      ),
    );
  }
}
